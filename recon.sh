#!/bin/bash
back() {
    echo "You want to to Main menu (99 or 2) " | festival --tts
    read -p "99. Main Menu : " return1
    echo
    if [ $return1 == "99" ]; then
        echo "You are entered number 99" | festival --tts
        clear
        repeat
    else
        [ $return1 == "2" ]
        echo "Sorry, User you are entered an incorrect number please enter a correct number" | festival --tts
        echo "Invalid Number"
    fi
}
clear
repeat() {
    clear
    echo "                                                             _  _____ ____ ___  _   _    "
    echo "                                                            |  _ \| ____/ ___/ _ \| \ | |"
    echo "                                                            | |_) |  _|| |  | | | |  \| |"
    echo "                                                            |  _ <| |__| |__| |_| | |\  |"
    echo "                                                            |_| \_\_____\____\___/|_| \_|"
    echo
    echo "                                                                Welcome To CyberWorld" | festival --tts
    echo "                                                                Welcome To CyberWorld"
    echo "                                                         Recon Version 1.0 (https://recon.com)"
    echo "                                                                 TARGET SPECIFICATION"
    echo
    echo "                                                      Can See Hostname, IP Address, Network"
    echo "                                        Example : recon.com, microsoft.com/24, 192.168.0.1, 10.10.10.0.1-254"
    echo
    echo "Hi User I am Artificial Intelligence Created by Nitin Singh" | festival --tts
    echo
    echo "1. Host Discovery"
    echo "2. Port Specification or Scan Order"
    echo "3. Service and Version Detection"
    echo "4. Script Scan"
    echo "5. OS Detection"
    echo "6. Firewall/IDS Evasion and Spoofing"
    echo "7. Exit"
    echo
    echo "Please Enter The Number Between 1 to 7" | festival --tts
    read -p "Enter Any Number To Continue : " command
    case $command in

    1)
        echo "You are entered number 1" | festival --tts
        echo
        echo "1. Classic ICMP ping"
        echo "2. TCP SYN Ping"
        echo "3. TCP ACK Ping"
        echo "4. UDP Ping"
        echo "5. ARP Ping"
        echo "Again Please Enter The Number Between 1 to 5" | festival --tts
        echo
        read -p "Enter Your Number : " host_discover
        if [ $host_discover == "1" ]; then
            echo "You are entered number 1" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " icmp_ping
            echo
            nmap -sn -PE $icmp_ping
            echo
            back
        elif [ $host_discover == "2" ]; then
            echo "You are entered number 2" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " syn_ping
            echo
            nmap -sn -PS $syn_ping
            echo
            back
        elif [ $host_discover == "3" ]; then
            echo "You are entered number 3" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " ack_ping
            echo
            nmap -sn -PA $ack_ping
            echo
            back
        elif [ $host_discover == "4" ]; then
            echo "You are entered number 4" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " udp_ping
            echo
            nmap -sn -PU -Pn $udp_ping
            echo
            back
        elif [ $host_discover == "5" ]; then
            echo "You are entered number 5" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " arp_ping
            echo
            nmap -sn -PR $arp_ping
            echo
            back
        else
            echo "Sorry, User you are entered an incorrect number please enter a correct number" | festival --tts
            echo "Invalid Number"
            repeat
        fi
        ;;

    2)

        echo
        echo "1. Specify Ports"
        echo "2. Exclude Ports"
        echo "3. Limited/Fast Port Scan"
        echo "4. Don't Randomize Ports"
        echo "5. Scan Top Ports"
        echo
        echo "Again Please Enter The Number Between 1 to 5" | festival --tts
        read -p "Enter Your Number : " port_scan
        if [ $port_scan == "1" ]; then
            echo "You are entered number 1" | festival --tts
            echo
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " specific_port
            echo "If you want to give the port range enter yes or no" | festival --tts
            read -p "You want to give range of ports (yes/no) : " choice
            if [ $choice == "yes" ]; then
                echo "You are entered number yes" | festival --tts
                echo
                echo "Enter the port range you want to scan" | festival --tts
                read -p "Enter Your port range (1-200) : " port_range1
                nmap -p $port_range1 $specific_port
            else
                [ $choice == "no" ]
                echo "You are entered number no" | festival --tts
                echo "Enter the specific port you want to scan" | festival --tts
                read -p "Enter the Port Number (21,22,80) : " port_number
                echo
                nmap -p $port_number $specific_port
            fi
            back
        elif [ $port_scan == "2" ]; then
            echo "You are entered number 2" | festival --tts
            echo
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " exclude_port
            echo "Enter the port range you want to exclude" | festival --tts
            read -p "Enter Your port to exclude from port scanning(20-30) : " exclude_port1
            echo
            nmap $exclude_port --exclude-ports $exclude_port1
            back
        elif [ $port_scan == "3" ]; then
            echo "You are entered number 3" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " limit_port
            echo
            nmap -F $limit_port
            back
        elif [ $port_scan == "4" ]; then
            echo "You are entered number 4" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " order_port
            echo
            nmap -r $order_port
            back
        elif [ $port_scan == "5" ]; then
            echo "You are entered number 5" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " top_port
            echo
            nmap --top-ports $top_port
        fi
        back
        ;;

    3)
        echo "You are entered number 3" | festival --tts
        echo "Enter the hostname or target" | festival --tts
        echo
        read -p "Enter Your Hostname/Target : " version_detect
        echo "Enter the Version Intersity" | festival --tts
        read -p "Enter Your Version Intensity : " version_intensity
        echo "Do you want to check the full processing status of the scanning enter yes or no" | festival --tts
        read -p "You Want to get the processing status (yes/no) : " choice1
        if [ $choice1 == "yes" ]; then
            echo "You are entered number yes" | festival --tts
            nmap -sV -O --version-intensity --version-all $version_intensity $version_detect
            back
        else
            [ $choice1 == "no" ]
            echo "You are entered number no" | festival --tts
            nmap -sV -O --version-trace --version-intensity $version_intensity $version_detect
            back
        fi
        back
        ;;
    4)
        echo
        echo "You are entered number 4" | festival --tts
        echo "1. Scan"
        echo "2. Update the script"
        echo
        echo "Again Please Enter The Number 1 or 2" | festival --tts
        read -p "Enter the Number : " script_scan
        if [ $script_scan == "1" ]; then
            echo "You are entered number 1" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " script_scan
            nmap -sC $script_scan
            back
        elif [ $script_scan == "2" ]; then
            echo "You are entered number 2" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " script_scan
            nmap --script-updatedb
            back
        else
            back
        fi
        back
        ;;

    5)
        echo
        echo "You are entered number 5" | festival --tts
        echo
        echo "Enter the hostname or target" | festival --tts
        read -p "Enter Your Hostname/target : " os_detect
        echo
        nmap -sS -sV $os_detect -O -A
        back
        ;;

    6)
        echo
        echo "You are entered number 5" | festival --tts
        echo "1. fragment packets"
        echo "2. maximum transmission unit"
        echo "3. Source port manipulation"
        echo "4. IP address spoofing /Decoy IP"
        echo "5. Binary data as payload"
        echo "6. Regular string as payload"
        echo "7. Appending random data bytes"
        echo "8. Randomizing host order"
        echo "9. Sending Bad checksums"
        echo "10. Spoofing MAC address"
        echo
        echo "Again Please Enter The Number 1 or 10" | festival --tts
        read -p "Enter the Number : " firewall1
        if [ $firewall1 == "1" ]; then
            echo
            echo "You are entered number 1" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " fragement_packet
            nmap -f $fragement_packet
            back
        elif [ $firewall1 == "2" ]; then
            echo
            echo "You are entered number 2" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " transmissin_unit
            echo "Enter the maximum transmissin unit" | festival --tts
            read -p "Enter the maximum transmissin unit : " max_transmissin_unit
            nmap -mtu $max_transmissin_unit $transmissin_unit
            back
        elif [ $firewall1 == "3" ]; then
            echo
            echo "You are entered number 3" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the source port : " source_port_manipulation
            read -p "Enter the source port : " source_port
            nmap -g $source_port $source_port_manipulation
            back
        elif [ $firewall1 == "4" ]; then
            echo
            echo "You are entered number 4" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " ip_spoofing
            nmap -D RDN:$ip_spoofing
            back
        elif [ $firewall1 == "5" ]; then
            echo
            echo "You are entered number 5" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " binary_data_payload
            echo "Enter the binary data payload" | festival --tts
            read -p "Enter the binary data payload : " binary_payload
            nmap $binary_data_payload $binary_payload
            back
        elif [ $firewall1 == "6" ]; then
            echo
            echo "You are entered number 6" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " regular_string_payload
            echo "Enter the string data payload" | festival --tts
            read -p "Enter the binary data payload : " string_payload
            nmap $regular_string_payload --data-string $string_payload
            back
        elif [ $firewall1 == "7" ]; then
            echo
            echo "You are entered number 7" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " appending_ramdom_data
            echo "Enter the appending ramdom data" | festival --tts
            read -p "Enter the appending ramdom data : " data_length
            nmap --data-length $data_length $appending_ramdom_data
            back
        elif [ $firewall1 == "8" ]; then
            echo
            echo "You are entered number 8" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " ramdonsize_order
            nmap --randomize-hosts $ramdonsize_order
            back
        elif [ $firewall1 == "9" ]; then
            echo
            echo "You are entered number 9" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " sending_bad_checksum
            nmap --badsum $sending_bad_checksum
            back
        elif [ $firewall1 == "10" ]; then
            echo
            echo "You are entered number 10" | festival --tts
            echo "Enter the hostname or target" | festival --tts
            read -p "Enter the hostname/target : " spoofing_mac_address
            nmap -sT -Pn --spoof-mac 0 $spoofing_mac_address
            back
        fi
        back
        ;;

    7)
        echo
        echo "Thanking You for Using My Tools" | festival --tts
        echo "          Bye Bye" | festival --tts
        echo "Thanking You for Using My Tools"
        echo "          Bye Bye"
        exit
        ;;

    *)
        repeat
        ;;
    esac
}
repeat
back() {
    echo "You want to to Main menu (99 or 2) " | festival --tts
    read -p "99. Main Menu : " return1
    echo
    if [ $return1 == "99" ]; then
        echo "You are entered number 99" | festival --tts
        clear
        repeat
    else
        [ $return1 == "2" ]
        echo "Sorry, User you are entered an incorrect number please enter a correct number" | festival --tts
        echo "Invalid Number"
    fi
}
