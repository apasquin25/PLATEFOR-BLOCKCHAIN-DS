// SPDX-Licence-Identifier:MIT
pragma solidity >=0.4.0 <=0.8.0;

contract contratexpedition {
    // Enumération des différents Etat d'un suivi colis
    enum Etat {Pending, Shipped, Delivered} 
    Etat choix; 

    // Définition des éléments que compose un Colis
    struct Colis {
        string id;
        string nom;
        string origine;
        string destination;
        uint timedepart;
        uint timedestination;
    }
    
    // Création des évènement énumérer précèdamment.
    event Pending(
        string localisation,
        uint time
    );

    event Shipped (
        string localisation,
        uint time
    );

    event Delivered (
        string localisation,
        uint time
    );

    Colis[] colis;

    // Création fonction Expédition 
    function contratexp() public {
        colis.push(Colis({
            nomDepart: _origine;
            nomArrive: _destination;
        }));
    }

    // Création fonction Expédié avec un booléen qui devrait return true si colis en cours de livraison.
    // Si timedepart et timedestination différents return true --> Pas réussi
    function Shipped(
        string _name,
        uint _timedestination
    ) 
        public {
            return (bool succes)
    {
        if (_timedestination == 0)
            _timedestination = now;
    }
        colis.push(Colis({
            name: _name,
            timedestination: _timedestination,
            timedestination: 0
        }));

    return true;

    }
    // Fonction en attente = départ
    // Booléen qui dit true si timedepart est identique à l'état timedepart du colis
        function Pending(
            string _name,
            uint _timedepart

        ) public {
        return (bool success)
        {
            if(_timedepart == 0) {
                _timedepart == now;
            }
        }
    }

    // Fonction livré.
    // Booéen return true si timedestination est identique à celui dans Colis
    function Delivered(
        string _name;
        uint _timedestination
    )
        public
        return (bool success)
    {
        if (_timedestination == 0){
            _timedestination = now;
        }
        colis.push(Colis({
            name: _name,
            timedestination: _timedestination,
        }));
        return true;
    }
}