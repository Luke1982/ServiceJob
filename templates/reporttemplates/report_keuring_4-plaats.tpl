{strip}<style type="text/css">
{literal}
	table.thinborder td {
        border-style: solid solid solid solid;
        border-width: 0.1px 0.1px 0.1px 0.1px;
        border-color: #000 #000 #000 #000;
	}
	span.smalltext {
		font-size: 6px;
	}	
{/literal}
</style>
<div id="report_filename" style="display: none">keuring_4plaats_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">REGISTRATIE FORMULIER CRF-1 VOOR GEBRUIK BIJ HERKEURING PLATENREMTESTBANKEN</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="width:20%">
				<img alt="" src="storage/images/Logo_CBX_zwart_wit.png" style="float:left; height:65px; width:65px" />
			</td>
			<td style="width:20%">
				<p style="font-size: 8px;">{$reportmeta.company.address}<br />{$reportmeta.company.code}, {$reportmeta.company.city}</p>
				<p style="font-size: 8px;">{$reportmeta.company.website}</p>
				<p style="font-size: 8px;">Tel. {$reportmeta.company.phone}</p>
			</td>
			<td style="width:60%">
			<table align="right" border="0" cellpadding="3" cellspacing="0" width="100%" class="thinborder" style="border-collapse:collapse;">
				<tbody>
					<tr>
						<td colspan="4" style="background-color:rgb(153, 153, 153); text-align:center; border: 0.1px solid #000;"><span><strong>KLANT / REMMENBANK GEGEVENS</strong></span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Bedrijfsnaam</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.accountname}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Merk meetmiddel</span></td>
						<td style="width:30%; text-align:left; border: 0.1px solid #000;"><span>{$reportmeta.cf_543}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Adres</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.ship_street}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Type meetmiddel</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.productname}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">PC / Plaats</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.ship_code}&nbsp;{$reportmeta.ship_city}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Serienummer</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.serialnumber}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">KI Nummer</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.cf_548}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Verloopdatum</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.cf_731|date_format:'%d-%m-%Y'}</span></td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="3" cellspacing="0" style="border-collapse:collapse;" class="thinborder">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); width:60%"><span><strong>Controles aan de uitleesconsole en vloerdelen</strong></span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Ja / Goed</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Goed na reparatie of onderzoek</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Nee / fout</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>N.V.T.</span></td>
		</tr>
		<tr>
			<td style=" width:60%">Voldoet de typesticker aan alle opschriften?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is het certificaat van eerste keuring aanwezig, en wordt hierop het juiste serienummer vermeld?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.certificaat_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.certificaat_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.certificaat_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.certificaat_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de originele Nederlandse handleiding aanwezig?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn er geen beschadigingen of wijzigingen aanwezig?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de conformiteit van de <strong>aanwijsinrichting</strong> gewaarborgd door een verzegelingssticker?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.verzegeling_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.verzegeling_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.verzegeling_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.verzegeling_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de aanwijsinrichting gecontroleerd op duidelijke aanwijzing? (LED&#39;s)</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.led_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.led_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.led_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.led_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de voedingsspanning gecontroleerd?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.voeding_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.voeding_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.voeding_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.voeding_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de conformiteit van de <strong>vloerdelen</strong> gewaarborgd door een verzegelingssticker? (Indien eerste keuring na 1-1-2012 heeft plaatsgevonden)</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.vloerdelen_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.vloerdelen_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.vloerdelen_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.vloerdelen_controle == 'nvt'}X{/if}</strong></td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" class="thinborder" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td colspan="7" style="background-color:rgb(204, 204, 204); text-align:center"><strong>Controle van de volgende kalibratiepunten</strong></td>
		</tr>
		<tr>
			<td rowspan="2" colspan="1" style="background-color:rgb(204, 204, 204); text-align:center;">
			<p style="text-align:center"><span style="font-size:8px">Belasting<br />
			(N)</span></p>
			</td>
			<td colspan="3" style="background-color:rgb(51, 51, 51); text-align:center;"><span style="color:rgb(255, 255, 255)"><strong>Vooras</strong></span></td>
			<td colspan="3" style="background-color:rgb(51, 51, 51); text-align:center;"><span style="color:rgb(255, 255, 255)"><strong>Achteras</strong></span></td>
		</tr>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center;">
				<p><span>Aanduiding linksvoor (N)</span></p>
			</td>
			<td style="background-color:rgb(204, 204, 204); text-align:center;">L/R</td>
			<td style="background-color:rgb(204, 204, 204);">
				<p style="text-align:center"><span>Aanduiding rechtsvoor (N)</span></p>
			</td>
			<td style="background-color:rgb(204, 204, 204); text-align:center;">
				<p><span>Aanduiding linksachter (N)</span></p>
			</td>
			<td style="background-color:rgb(204, 204, 204); text-align:center;">L/R</td>
			<td style="background-color:rgb(204, 204, 204);">
				<p style="text-align:center"><span>Aanduiding rechtsachter (N)</span></p>
			</td>
		</tr>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center;">1000</td>
			<td style="text-align:center;"><strong>{$reportvalues.lv_1000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_voor_1000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.rv_1000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.la_1000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_achter_1000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.ra_1000N}</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(204, 204, 204);  text-align:center;">3000</td>
			<td style="text-align:center;"><strong>{$reportvalues.lv_3000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_voor_3000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.rv_3000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.la_3000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_achter_3000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.ra_3000N}</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(204, 204, 204);  text-align:center;">5000</td>
			<td style="text-align:center;"><strong>{$reportvalues.lv_5000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_voor_5000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.rv_5000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.la_5000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_achter_5000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.ra_5000N}</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(204, 204, 204);  text-align:center;">7000</td>
			<td style="text-align:center;"><strong>{$reportvalues.lv_7000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_voor_7000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.rv_7000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.la_7000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_achter_7000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.ra_7000N}</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(204, 204, 204);  text-align:center;">10000</td>
			<td style="text-align:center;"><strong>{$reportvalues.lv_10000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_voor_10000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.rv_10000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.la_10000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.verschil_achter_10000N}</strong></td>
			<td style="text-align:center;"><strong>{$reportvalues.ra_10000N}</strong></td>
		</tr>
		<tr>
			<td colspan="7" style="width:100%">Maximaal toegestane afwijking: bij 1.000N = 180N, bij 2.000 t/m 10.000N = 10% of 4%. Verschil tussen links en rechts maximaal 5% of 2%.</td>
		</tr>
	</tbody>
</table>

	<p><span><strong>Verrichte werkzaamheden / opmerkingen:</strong></span></p>

	<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;" class="thinborder">
		<tbody>
			<tr>
				<td>{if $reportvalues.mechanic_remarks != ""}{$reportvalues.mechanic_remarks}{else}Geen opmerkingen{/if}</td>
			</tr>
		</tbody>
	</table>

	<p><span><strong>Gegevens keuringstechnicus en resultaat:</strong></span></p>

	<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;">
		<tbody>
			<tr>
				<td style="width:25%; border: 0.1px solid #000;">Keuringstechnicus:</td>
				<td style="width:25%; border: 0.1px solid #000;"><span>{$reportmeta.user.first_name}&nbsp;{$reportmeta.user.last_name}</span></td>
				<td style="text-align:center; width:5%; border: 0.1px solid #000;"><strong>{if $reportvalues.goed_afkeur == 'goedkeur'}X{/if}</strong></td>
				<td style="width:20%; border: 0.1px solid #000;"><strong>GOEDGEKEURD</strong></td>
				<td style="text-align:center; width:5%; border: 0.1px solid #000;"><strong>{if $reportvalues.goed_afkeur == 'afkeur'}X{/if}</strong></td>
				<td style="width:20%; border: 0.1px solid #000;"><strong>NIET GOEDGEKEURD</strong></td>
			</tr>
			<tr>
				<td style="width:25%; border: 0.1px solid #000;">Datum:</td>
				<td colspan="5" style="width:75%; border: 0.1px solid #000;">{$reportmeta.date}</td>
			</tr>
		</tbody>
	</table>{/strip}