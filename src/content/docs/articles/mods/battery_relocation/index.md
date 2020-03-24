+++
title = "Battery Relocation"
date = 2020-01-01

toc = true # Show table of contents? true/false
type = "docs"  # Do not modify.

linktitle = "Battery Relocation"
[menu.docs]
  parent = "mods"
+++

<small>

*From duanedibley.com - [http://www.duanedibley.com/wordpress/cars/300zx/](http://www.duanedibley.com/wordpress/cars/300zx/)*  

</small>

## Warning & Info
Before going any further it is important to say the following.

*   this guide is for information only, there’s no warranty, implied or express that this is safe to do. This guide is for educational purposes only, nothing more
*   do NOT put a standard battery in your trunk, they out gas many nasty things including  hydrogen gas (knock you out) and sulfuric gas (kill you) even when working normally.
*   if you relocate the battery you should ONLY use a sealed battery, however even sealed batteries are only sealed when operating normally. If you over charge or abuse them they will also out gas and kill you. You should always use a vented to outside sealed box for them or a vent kit.
*   Nissan put the battery under the hood for good reasons, specifically because its vented to outside and can’t kill you there. 

**In short if you aren’t sure what you are doing , then leave it alone.**

I chose the [Optima Yellow](https://www.amazon.com/gp/product/B000MSBUA4/ref=oh_aui_detailpage_o05_s00?ie=UTF8&psc=1) battery for my Nissan, primarily because it is an AGM style sealed battery, tolerant of deep cycle discharge, and has duplicate terminals for maintenance charger connection even when disconnected from vehicle.  

I chose to not put this in a sealed box but instead to fit a vent kit to get any fault condition out gassing to outside world. For what its worth this is acceptable to SCCA, so i consider it ok for street use also.

> _SCCA rule 3.3.3.B_
> 
> _17) Any wet-cell battery moved from the manufacturer’s original location_  
> _shall be in a non-conductive, marine-type container or equivalent and_  
> _the “hot” terminal shall be insulated. All batteries (on-board power_  
> _supplies) shall be attached securely to the frame or chassis structure_  
> _independent of the marine-type container._   
>
> _**NOTE: This will allow the use of gel cell or dry cell (AGM) batteries without a non-conductive, marine-type container where applicable.**_  

So relocating an AGM battery to the trunk area is generally safe (see above) but if the alternator regulator fails the alternator can then overvolt/overcharge the battery. in that case [bad things](https://batteryuniversity.com/index.php/learn/article/health_concerns) can happen

Over-charging a lead acid battery can produce hydrogen-sulfide. The gas is colorless, very poisonous, flammable and has 
the odor of rotten eggs. Hydrogen sulfate also occurs naturally during the breakdown of organic matter in swamps and 
sewers; it is also present in volcanic gases, natural gas, and some well waters.   
Being heavier than air, the gas accumulates at the bottom of poorly ventilated spaces. Although noticeable at first, 
the sense of smell deadens with time and potential victims may be unaware of its presence.

To address this I also installed a [voltage monitor]() in the driving area so i can see if the voltages rises too far  
**I would recommend you do something similar.**

## Wire Choice

The options are:  
*   one wire or two
*   what size or gauge wire

Many people who seem to relocate the battery to the trunk advocate a single +12V wire from engine bay to trunk and ground the battery locally. This is the “one wire” solution.

The other option is to run two wires from engine bay to trunk for +12V and 0V connections and NOT ground battery locally in trunk. this is the “two wire” solution.

### “Sciencey” bit
I’ll now explain why the two wire solution is the right choice, feel free to skip ahead if you disagree or don’t care why :-).  
There are two concerns with relocating a car battery “further away” from where its needed.

*   Electrical interference to other components in the car.
*   The extra resistance of the cable will “loose” some of the battery voltage to IR losses in wires.

Electrical interference can occurs in two simple ways, capacitive and inductive coupling.

Capacitive coupling is an effect driven by voltage changes creating a”kick” on a victim wire from an aggressor wire 
(our 12V battery supply) via capacitance between the wires. This is common within Silicon chips and where signals are 
very small (RF receivers etc). 
However even under maximum load (engine turning over for instance) the battery voltage will not change much and the 
effect in cars will be minimal. 
If needed You can “fix” this by shielding the aggressor wire. 
Capacitive coupling is a “short range” effect.

Inductive coupling is an effect driven by  current changes creating a rapidly changing magnetic field, which creates a 
“kick” on a victim wire. 
Under maximum load or charging a car will see very large currents into and out of the battery creating large inductive 
coupling effects. 
This is a large range effect and normal shielding does not “fix” it.

Inductive coupling is the major “interference” factor for cars and is the concern for battery relocation. 
Kirchoff’s law requires all “nodes” in a circuit to have a zero sum of currents, that means what goes in must come out !!!. 
So when we are providing a large current out of the 12V battery terminal to drive the starter motor, the same current 
MUST flow into the 0V terminal to compensate.

In a single wire solution the large starter/alternator current flow down the 12V wire, couples magnetically 
to everything around it as the currents change. 
The exact opposite return current flows through the car chassis to the local ground point then into the battery 0V terminal. 
The result, maximum interference to anything along the 12V wire and “ground noise” for anything connected 
to the chassis between the starter and battery. 
When the battery is close to the starter and alternator, this effect is minimized but it shows when you relocate the battery to the trunk.

In a dual wire solution you have the same large currents in the 12V wire, but you now have the exact opposite current 
(Kirchoff again) in the 0V wire returning to the battery. 
If you carefully run the two wires together then the magnetic field of one exactly matches the magnetic field of the other, 
but since the currents are opposite so are the fields. 
And they cancel perfectly. No magnetic field means no coupling or interference. 
There is still a strong field between the 12V and 0V wires but outside there’s nothing. 
So minimal interference occurs.

The down side of the two wire solution is that you have twice the resistance (two cables) 
as the single wire solution if you assume the chassis connection is perfect (it isn’t). 
So you need thicker cables and of course 2 of them. 
As a general assumption a two wire solution will require 3x the space for wires compared to a one wire solution 
to get same overall resistance and IR drop (i.e two wires each 1.4x larger diameter).   
Referring to [this reference](https://en.wikipedia.org/wiki/American_wire_gauge) if you use 3 gauge wire for a single wire solution 
(0.64 mohms/m and 0.23inch/5.8mm diameter) you would need to use 1/0 gauge wire for a two wire solution ( 2x 0.32mohms/m and 2×0.32inch/8.2mm diameter).
For a 300 Amp starter current this would be about 0.8V drop and about 60 Watts of power loss or about 2% losses.  

So we can all agree that if you can afford the space a two wire solution is best with the biggest cable you can fit 1/0 gauge in my case, 
and no local ground connection in trunk, and that’s what i have done.


## The Plan

The plan is fairly simple

*   remove the battery from the passenger rear of engine bay and replace it with two connectors (+12v and gnd)
*   Run two 1/0 gauge wires from where battery used to be through fire wall and down passenger side of car to trunk area
*   Remove the jack and tools from trunk
*   Mount battery on passenger side in trunk where tools used to be
*   make cover for battery
*   add some extra grounding cables in engine bay


## Materials

These are the materials I used, feel free to change, buy your favorite stuff

*   [SoundBox Connected 0 Gauge Red / Black Amplifier Amp Power/Ground 1/0 Wire Set 50 Feet SuperFlex Cable 25 Each, ANL Fuse Holder](https://www.amazon.com/gp/product/B017VBMHRO/ref=oh_aui_detailpage_o05_s00?ie=UTF8&psc=1) $49.95
*   [10 pcs Tinned Marine Grade Copper Battery Welding Cable Lug Connector Terminal](https://www.amazon.com/gp/product/B008D54QZE/ref=oh_aui_detailpage_o05_s00?ie=UTF8&psc=1) $9.05
*   [6 Gauge Premium Extra Flexible Welding Cable 600 VOLT – BLACK – 25 FEET](https://www.amazon.com/gp/product/B00WDOOGBA/ref=oh_aui_detailpage_o05_s00?ie=UTF8&psc=1) $8.00
*   [InstallGear 0/2/4 AWG Gauge Power Distribution Block 1/0 Gauge In to (4) 4/8 Gauge Out](https://www.amazon.com/gp/product/B01DCDL9WE/ref=oh_aui_detailpage_o07_s00?ie=UTF8&psc=1) $9.95
*   [InstallGear 1/0 Gauge AWG Crimp Ring Terminals Connectors – 10-Pack (5 Positive, 5 Negative)](https://www.amazon.com/gp/product/B00P9NBN6S/ref=oh_aui_detailpage_o08_s00?ie=UTF8&psc=1) $ 13.83
*   [Kicker GT2 Ground Termination Block with 1/0-8 Gauge Inputs](https://www.amazon.com/gp/product/B00L2SFEZA/ref=oh_aui_detailpage_o08_s01?ie=UTF8&psc=1) $13.80
*   [Raptor R5BT048P PRO SERIES – Positive Battery Terminal](https://www.amazon.com/gp/product/B0194MSSMG/ref=oh_aui_detailpage_o09_s00?ie=UTF8&psc=1) $13.35
*   [Raptor R5BTN PRO SERIES – Negative Battery Terminal](https://www.amazon.com/gp/product/B00VPK3FGU/ref=oh_aui_detailpage_o08_s02?ie=UTF8&psc=1) $11.37
*   [Optima Batteries 8014-045 D34/78 YellowTop Dual Purpose Battery](https://www.amazon.com/gp/product/B000MSBUA4/ref=oh_aui_detailpage_o05_s00?ie=UTF8&psc=1) $212.99
*   [Schumacher BAF-STB Side Terminal Bolt](https://www.amazon.com/gp/product/B0060YHYEK/ref=oh_aui_detailpage_o06_s01?ie=UTF8&psc=1) $5.39
*   [Billet Aluminum POLISHED Optima Battery Tray Holder Box](https://www.amazon.com/gp/product/B00CA9AB62/ref=oh_aui_detailpage_o07_s00?ie=UTF8&psc=1) $55.00
*   [CarbonX Carbon Fiber PLA 3D Printing Filament from 3DXTECH; 750g (1.65lbs), 1.75mm diameter](https://www.amazon.com/gp/product/B00RW5IKX0/ref=oh_aui_detailpage_o03_s00?ie=UTF8&psc=1) $39.95
*   [Optima Digital 400 12V Performance Maintainer and Battery Charger – 150-40008](https://www.amazon.com/gp/product/B00DHGPVKI/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) $103.58
*   [KUMEED 12V DC 20A 30A 40A 50A 60A Car Audio Inline Circuit Breaker Fuse for System Protection (30A)](https://www.amazon.com/gp/product/B01H3DKGFK/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) $10.99
    

3D printed items (STL provided)

*   Panel mount for firewall to mount 2x Installgear Power Blocks
*   Battery side terminal covers 2x
*   Battery top terminal shields 2x
*   Bodywork Cable ties 12x

Total Cost (excl tools)  $447

## Howto

### Relocate the Battery

1.  Start with the 1/0 gauge cable, i got extra flexible because its got to bend a lot in some tight spaces. The wire itself is about 0.32 (wikipedia) inches diameter, but that’s without insulation. With insulation its 0.5 inches and with space for grommets etc we need 5/8 inch holes for it to pass through. i got 25ft of cable but that’s more than is required.  
    {{< img src="images/IMG_3559.jpg" alt="Battery cables" >}}  

2.  Remove the existing battery and dispose off  
    **YOU CAN’T USE THE ORIGINAL BATTERY IN THE TRUNK DUE TO OUT GASSING ISSUES**
   
3.  Remove the passenger fender. This is optional. I think you can do this with the front wheel removed and inner screen pulled back, 
    but it was just easier for me to remove the fender completely.    
    {{< img src="images/IMG_3553.jpg" alt="Removed fender" >}}  

4.  There is a “flap” between the inner engine bay and the fender area adjacent to where the battery used to be the cables run through there. Run the cables into the engine bay here    
    {{< img src="images/IMG_3554.jpg" alt="Flap Fender" >}}  
    {{< img src="images/IMG_3561.jpg" alt="Flap Fender" >}}  

5.  Next I mounted the two Install gear distribution blocks to the 3D printed panel that was then bolted to the firewall using the existing bolt and hole. Both 1/0 gauge wires connect on left.  

    **GND Block:** I connected the starter cable directly to the dist block, and ran an extra 8 gauge wire from the dist block to the firewall ground mount. The two other 8 gauge cables are the additional engine bay grounding wires (see later)
     
    **12V block:** Connects to the original 12V cable, the original cable was “short” in my car so i extended it by 6 inches or so to reach. the second cable is the direct starter connection.
      
    {{< img src="images/IMG_3567.jpg" alt="Cable mounted" >}}  
    {{< img src="images/IMG_3566.jpg" alt="Cable mounted" >}}    

6.  Next is dealing with the firewall problem. There’s not too many options to get through the firewall on a  300ZX with such large cables, so holes will need to be drilled. 
    If you look in front of the passenger door hinge mounts you will see a hole right at bottom of the firewall bulkhead, this hole isn’t useful!! 
    But if you drill holes about 2 inches above that then you get access to the interior ECU compartment.
    I drilled 2x 5/8 inch holes side by side for the cables to accommodate both the cable and a grommet (per cable)  
    {{< img src="images/IMG_3557.jpg" alt="Cable holes" >}}  
    {{< img src="images/IMG_3556.jpg" alt="Cable holes" >}}  

7.  Inside the passenger foot well, remove the ECU cover (the wood one) and the kick panels.
    I also unbolted the 3 relays hidden away inside the chassis frame to make space to “see”.  
    {{< img src="images/IMG_3558.jpg" alt="Relay" >}}

8.  If you peer into the space behind the 3 relays you should be able to see “light” from the 2 holes you made. 
    Pass the cables through the holes onto the passenger foot well area (don’t forget the grommets).
    Once the cables are through the relays can be returned to the chassis space. 
    I zipped tied them to keep them together as much as possible  
    {{< img src="images/IMG_3564.jpg" alt="Cable Install" >}}  

9.  The tedious bit is routing the cables along the floor on the passenger side all the way to the trunk area.
    I used the 3D printed cable ties to zip tie the cables together and then double sided tape them to chassis.
    The main objective is to keep the battery cables close to each other and consistent so that induced magnetic fields around them cancel cleanly.  
    {{< img src="images/IMG_3571.jpg" alt="Cable Install" >}}  
    {{< img src="images/IMG_3568.jpg" alt="Cable Install" >}}  
    {{< img src="images/IMG_3569.jpg" alt="Cable Install" >}}  
    {{< img src="images/IMG_3570.jpg" alt="Cable Install" >}}  

10. The battery tray holder was mounted in the trunk on the passenger side in the space previously occupied by the jack and tools.  
    It was bolted via 4 holes drilled in the floor through 4x 3/4 inch SS stand off’s, adjusted for length to get the base of tray “flat”.  
    The 12V fuse was mounted directly to the upper tray panel and the battery installed.  
    GND wire direct to the 0V battery terminal, 12V wire to the fuse and fuse to the 12V battery terminal with 3D printed shields under terminals to avoid shorts. 
    There is specifically **NO** grounding of battery in trunk area. The NOCO battery maintainer cables were attached to the side terminals and 3D printed covers put over connections.

    {{< img src="images/IMG_3572.jpg" alt="Battery Install" >}}  

11. Final build is to add the vent plumbing in case of over charge. This is **TBD**

12. Covers and making it “pretty” will come later


### Engine Bay Grounding

There are a lot of perspectives and options regarding engine bay grounding , both if and how to do it.

From [nicoclub.com](http://forums.nicoclub.com/grounding-kit-myth-t585639.html) :  
>   This is BS to me, especially the one I see here. So someone clear this up with science and not superfluous "feels" statements please...even better documented evidence.
>   
>   I've gone all over the grounding kit I see on this forum as well as other sites and searches. All of them seems to be a bunch of excessive, unnecessary, over indulgent wiring.
>   You can't get a flood through a straw, so why is everyone taking 16-14gauge wire and piping that to 4-0gauge wire all over the engine to a grounding point and saying its doing something.
>   
>   The general theoretical principle of this is to provide a bigger gauge wire for a better return path, thus producing better cleaner electricity, and slightly higher voltage. However, the bigger gauge wire is always picking up from a smaller wire in these kits. A 14-16gauge wire going to a 4gauge to a grounding point. And also one grounding point to another. This doesn't make sense. If this was really suppose to do something, the 4gauge would HAVE to be coming directly from the source and not have an intimidiary wire in between. That to me defeats the purpose. Think about it, electricity is like water, if you take a 2" diameter pipe and feed that into a 15" diameter pipe, it doesn't change the amount or force of water coming out the 15" as was coming out the 2". And even reverse that and pour the 15" into the 2"; it would burn up the 2" because too much was being poured it. So why? How exactly does this grounding kit the way it is help?
>   
>   I believe there is potential, however I'm not all the way sold, and definitely not the way this particular kit is designed and many others i see floating around. If I were to rewire the electrical system for better power all I would do is 3-5 wires.
>   1/ change the positive wire alternator to battery
>   2/ negative battery to chassis
>   3/ chassis to engine block
>   4/ the ecu if I have direct access
>   
>   4gauge standard, and 0-4gauge with aftermarket toys installed.
>   
>   All other points I don't see a point to. And thus this can def be done way cheaper than this kit is being sold for(easily 50%)...if this stuff actually makes a significant difference.

Philosophically its best to run as large a wire as you can from every point that wants a ground directly back to the battery terminal, no intermediate connections. 
Practically this is difficult to do, especially if the battery is in the trunk.  
For me i have some specifics I want to address

1.  ground both relay boxes to engine bay 0V terminal
2.  ground the engine block (so sensors have no issues)  to engine bay 0V terminal
3.  ground the throttle sensor to engine bay 0V terminal
4.  ground the temp sensors to engine bay 0V terminal
5.  ground the headlight ground points to engine bay 0V terminal.

My engine bay 0V terminal has 2 free connections so i’ll use one for left and front of engine, one for rear and right of engine.  Direct connections are preferable but daisy chaining is a practical requirement. I’ll try to keep it to no more than 2 intermeadiate points and use gold plated tabs for those points if necessary.

I am not going to ground the alternator as long as the voltage across the two battery terminals in the engine bay indicate higher than static battery voltage i’ll assume the resistance of wires on the alternator 0v and 12v cables is not detrimental. Its possible that any alternator ground current through the block causes 0v noise that might impact the sensors on the block, so i might come back to this.

I am using 6 gauge wire with a mix of copper and gold crimp connectors.

I doubt that its possible to measure any differences  from before vs after, but since debugging grounding issues is a PITA i’d prefer to not have a problem.


## Additional

Subsequent to the relocation work, i added a sub woofer speaker into the car (under passenger area), and to support that i added a  2nd breaker circuit specifically for the subwoofer
{{< img src="images/breaker.jpg" alt="Circuit Breaker" resize="400x" >}}  

You can see it added here
{{< img src="images/2019-04-19-11.03.06.jpg" alt="Circuit Breaker" >}} 

And to keep the battery in good shape if the car is not driven in a  while, i purchased an charger/maintainer specifically for this battery  
<a href="https://www.amazon.com/gp/product/B00DHGPVKI/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1">{{< img src="images/charger.jpg" alt="Battery Charger" resize="400x" >}}</a> 



## Left to Do
What’s left to do is 3D print adaptors for the two vent holes on the battery so i can tube them to external. Its a “must do” item but not done yet