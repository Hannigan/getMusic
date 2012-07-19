#!/bin/bash 

declare -a arr=('themixster.com'
                'thefieldset.com'
                'theampalcreative.com'
                'smogla.com'
                'shiftyrhythms.com'
                'rollingtuff.com' 
                'evelastnight.com'  
                'pointblanklondon.com'  
                'dkurtz.tumblr.com'  
                'ourelectricgeneration.com'  
                'ocsdbeats.com'  
                'noharmnofowl.net'  
                'nashvillenightsblog.com'  
                'milehighdisco.com'  
                'metamimetic.com'  
                'mediacontender.com'  
                'magneticmagazine.com'  
                'indieshuffle.com'  
                'hotbiscuits.wordpress.com'  
                'gottadancedirty.com'
                'dscotech.com'
                'chubbybeaver.com'
                'danceism.com'
                'chemicaljump.com'
                'abigcitydied.com'
                '310electro.com')

for site in ${arr[@]}; do 
  wget -o -O index "${site}/wp-content/uploads/2012/06"
  if [[ `grep -c 'not found' index` && "$?" -eq "0" ]]; then 
    echo $site
  fi
done
