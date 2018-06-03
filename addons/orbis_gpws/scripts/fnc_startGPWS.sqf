private _vehicle = param [0, vehicle player];
private _mode = param [1, ""];

if (_caller in [driver _vehicle, gunner _vehicle, commander _vehicle]) then {
    switch (_mode) do {
        case ("f16"): {
            _vehicle setVariable ["orbisGPWSmodeLocal", "f16"];
            [_vehicle] spawn orbis_gpws_fnc_f16GPWS;
        };
        case ("b747"): {
            _vehicle setVariable ["orbisGPWSmodeLocal", "b747"];
            [_vehicle] spawn orbis_gpws_fnc_b747GPWS;
        };
        default {
            _vehicle setVariable ["orbisGPWSmodeLocal", ""];
        };
    };
};
