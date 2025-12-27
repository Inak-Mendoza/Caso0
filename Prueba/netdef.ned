

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
import inet.physicallayer.unitdisk.UnitDiskRadioMedium;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;


network ManetNet
{
    parameters:
        int numMobile = default(25);
        @display("bgb=1200,600");

    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=600,50");
        }


        configurator: Ipv4NetworkConfigurator {
            @display("p=100,50");
        }

        nodoFijo1: AdhocHost {
            @display("p=100,300;i=device/laptop");
        }

        nodoFijo2: AdhocHost {
            @display("p=1100,300;i=device/laptop");
        }

        nodoMovil[numMobile]: AdhocHost {
            @display("p=600,300;i=device/laptop");
        }
}
