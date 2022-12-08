#!/bin/bash
recon1() {
    clear
    main() {
        echo " ____ _____ ____ ___ _ _"
        echo " | _ \| ____/ ___/ _ \| \ | |"
        echo " | |_) | _|| | | | | | \| |"
        echo " | _ <| |__| |__| |_| | |\ |"
        echo " |_| \_\_____\____\___/|_| \_|"
        echo ""

        echo " Recon Version 1.0 (https://recon.com)"
        echo " TARGET SPECIFICATION : "
        echo
        echo " Can See Hostname, IP Address, Network"
        echo " Example : recon.com, microsoft.com/24, 192.168.0.1, 10.10.10.0.1-254"
        echo
        echo 1. Host Discovery
        echo 2. Scan Technique
        echo 3. Port Specification or Scan Order
        echo 4. Service and Version Detection
        echo 5. Script Scan
        echo 6. OS Detection
        echo 7. Timing and Performance
        echo 8. Firewall/IDS Evasion and Spoofing
        echo 9. MISC
        echo
        read -p "Enter Any Number To Continue : " command
    }
    main
    main1() {
        case $command in

        1)
            echo
            echo "1. Specify Ports"
            echo "2. Exclude Ports"
            echo "3. Limited/Fast Port Scan"
            echo "4. Donâ€™t Randomize Ports"
            echo "5. Scan Top Ports"
            echo
            read -p "Enter Your Number To Scan the Host : " host_scan
            if [ $host_scan == "1" ]; then
                read -p "Enter the hostname/target : " host1
                echo
                nmap -sn -PE $host1
                echo
                read -p "99. Main Menu : " return1
                if [ $return1 == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            elif [ $host_scan == "2" ]; then
                read -p "Enter the hostname/target : " host2
                echo
                nmap -sn -PS $host2
                echo
                read -p "99. Main Menu : " return2
                if [ $return2 == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            elif [ $host_scan == "3" ]; then
                read -p "Enter the hostname/target : " host3
                echo
                nmap -sn -PA $host3
                echo
                read -p "99. Main Menu : " return3
                if [ $return3 == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            elif [ $host_scan == "4" ]; then
                read -p "Enter the hostname/target : " host4
                echo
                nmap -sn -PU $host4
                echo
                read -p "99. Main Menu : " return4
                if [ $return4 == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            elif [ $host_scan == "5" ]; then
                read -p "Enter the hostname/target : " host5
                echo
                nmap -sn -PR $host5
                echo
                echo -n "99. Main Menu : "
                read return5
                if [ $return5 == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            else
                recon1
            fi
            ;;

        2)
            echo
            echo "1. Specify Ports"
            echo "2. Exclude Ports"
            echo "3. Limited/Fast Port Scan"
            echo "4. Donâ€™t Randomize Ports"
            echo "5. Scan Top Ports"
            echo
            read -p "Enter Your Number To Scan the Host : " host_scan1
            if [ $host_scan1 == "1" ]; then
                echo
                read -p "Enter the hostname/target : " host6
                read -p "You want to give range of ports (yes/no) : " range6
                if [ $range6 == "yes" ]; then
                    echo
                    read -p "Enter Your port range (1-200) : " range6
                    nmap -p $range6 $host6
                else
                    read -p "Enter the Port Number (21,22,80) : " port6
                    echo
                    nmap -p $port6 $host6
                fi
                echo
                read -p "99. Main Menu : " return7
                if [ $return7 == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            elif [ $host_scan1 == "2" ]; then
                read -p "Enter Your port range (1-200) : " range7
                echo
                read -p "Enter Your port to exclude from port scanning (20-30) : " range7
                echo
                nmap -p $range7 --exclude-ports $range7
                echo
                read -p "99. Main Menu : " return
                if [ $return == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            elif [ $host_scan == "3" ]; then
                read -p "Enter the hostname/target : " host1
                echo
                nmap -F $host1
                echo
                read -p "99. Main Menu : " return
                if [ $return == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            elif [ $host_scan == "4" ]; then
                read -p "Enter the hostname/target : " host1
                echo
                nmap -r $host1
                echo
                read -p "99. Main Menu : " return
                if [ $return == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            elif [ $host_scan == "5" ]; then
                read -p "Enter the hostname/target : " host1
                echo
                read -p "Enter the top-port to scanning : " range1
                nmap --top-ports $range1 $host1
                echo
                echo -n "99. Main Menu : "
                read return
                if [ $return == "99" ]; then
                    clear
                    main
                    main1
                else
                    echo "Invalid Number!!!"
                fi
            fi
            ;;

        3)
            echo "3"
            ;;
        4)
            echo "4"
            ;;

        5)
            echo "5"
            ;;

        6)
            echo "6"
            ;;
        7)
            echo "7"
            ;;

        8)
            echo "8"
            ;;

        9)
            echo "9"
            ;;

        *)
            echo "Invalid Number!!!!"
            ;;
        esac
    }
    main1
}
recon1
main() {
    echo " ____ _____ ____ ___ _ _"
    echo " | _ \| ____/ ___/ _ \| \ | |"
    echo " | |_) | _|| | | | | | \| |"
    echo " | _ <| |__| |__| |_| | |\ |"
    echo " |_| \_\_____\____\___/|_| \_|"
    echo ""

    echo " Recon Version 1.0 (https://recon.com)"
    echo " TARGET SPECIFICATION : "
    echo
    echo " Can See Hostname, IP Address, Network"
    echo " Example : recon.com, microsoft.com/24, 192.168.0.1, 10.10.10.0.1-254"
    echo
    echo 1. Host Discovery
    echo 2. Scan Technique
    echo 3. Port Specification or Scan Order
    echo 4. Service and Version Detection
    echo 5. Script Scan
    echo 6. OS Detection
    echo 7. Timing and Performance
    echo 8. Firewall/IDS Evasion and Spoofing
    echo 9. MISC
    echo
    read -p "Enter Any Number To Continue : " command
}
main
main1() {
    case $command in

    1)
        echo
        echo "1. Specify Ports"
        echo "2. Exclude Ports"
        echo "3. Limited/Fast Port Scan"
        echo "4. Donâ€™t Randomize Ports"
        echo "5. Scan Top Ports"
        echo
        read -p "Enter Your Number To Scan the Host : " host_scan
        if [ $host_scan == "1" ]; then
            read -p "Enter the hostname/target : " host1
            echo
            nmap -sn -PE $host1
            echo
            read -p "99. Main Menu : " return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        elif [ $host_scan == "2" ]; then
            read -p "Enter the hostname/target : " host1
            echo
            nmap -sn -PS $host1
            echo
            read -p "99. Main Menu : " return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        elif [ $host_scan == "3" ]; then
            read -p "Enter the hostname/target : " host1
            echo
            nmap -sn -PA $host1
            echo
            read -p "99. Main Menu : " return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        elif [ $host_scan == "4" ]; then
            read -p "Enter the hostname/target : " host1
            echo
            nmap -sn -PU $host1
            echo
            read -p "99. Main Menu : " return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        elif [ $host_scan == "5" ]; then
            read -p "Enter the hostname/target : " host1
            echo
            nmap -sn -PR $host1
            echo
            echo -n "99. Main Menu : "
            read return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        else
            recon1
        fi
        ;;

    2)
        echo
        echo "1. Specify Ports"
        echo "2. Exclude Ports"
        echo "3. Limited/Fast Port Scan"
        echo "4. Donâ€™t Randomize Ports"
        echo "5. Scan Top Ports"
        echo
        read -p "Enter Your Number To Scan the Host : " host_scan
        if [ $host_scan == "1" ]; then
            echo
            read -p "Enter the hostname/target : " host1
            read -p "You want to give range of ports (yes/no) : " range1
            if [ $range1 == "yes" ]; then
                echo
                read -p "Enter Your port range (1-200) : " range1
                nmap -p $range1 $host1
            fi
            echo
            read -p "Enter the Port Number (21,22,80) : " port1
            nmap -p $port1 $host1
            echo
            nmap -sn -PE $host1
            echo
            read -p "99. Main Menu : " return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        elif [ $host_scan == "2" ]; then
            read -p "Enter Your port range (1-200) : " range1
            echo
            read -p "Enter Your port to exclude from port scanning (20-30) : " range2
            echo
            nmap -p $range1 --exclude-ports $range2
            echo
            read -p "99. Main Menu : " return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        elif [ $host_scan == "3" ]; then
            read -p "Enter the hostname/target : " host1
            echo
            nmap -F $host1
            echo
            read -p "99. Main Menu : " return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        elif [ $host_scan == "4" ]; then
            read -p "Enter the hostname/target : " host1
            echo
            nmap -r $host1
            echo
            read -p "99. Main Menu : " return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        elif [ $host_scan == "5" ]; then
            read -p "Enter the hostname/target : " host1
            echo
            read -p "Enter the top-port to scanning : " range1
            nmap --top-ports $range1 $host1
            echo
            echo -n "99. Main Menu : "
            read return
            if [ $return == "99" ]; then
                clear
                main
                main1
            else
                echo "Invalid Number!!!"
            fi
        fi
        ;;

    3)
        echo "3"
        ;;
    4)
        echo "4"
        ;;

    5)
        echo "5"
        ;;

    6)
        echo "6"
        ;;
    7)
        echo "7"
        ;;

    8)
        echo "8"
        ;;

    9)
        echo "9"
        ;;

    *)
        echo "Invalid Number!!!!"
        ;;
    esac
}
main1
