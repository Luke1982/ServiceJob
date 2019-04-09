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
<div id="report_filename" style="display: none">keuring_roetmeter_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">REGISTRATIE FORMULIER CRF-4 VOOR GEBRUIK BIJ HERKEURING ROETMETERS</td>
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
						<td colspan="4" style="background-color:rgb(153, 153, 153); text-align:center; border: 0.1px solid #000;"><span><strong>KLANT / ROETMETER GEGEVENS</strong></span></td>
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
						<td style="width:30%; text-align:left;"><span>{$reportmeta.cf_731}</span></td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;" class="thinborder">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); width:60%"><span><strong>Initiële controles</strong></span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Ja / Goed</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Goed na reparatie of onderzoek</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Nee / fout</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>N.V.T.</span></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn alle opschriften op het typeplaatje aanwezig en conform de toelating?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de originele Nederlandse handleiding aanwezig?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn alle innerlijke en uiterlijke kenmerken conform tekeningen in gewaarborgde documentatie?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn alle software versies en checksums conform de originele toelating?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.software_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.software_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.software_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.software_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de opname slang onbeschadigd?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de roetmeter geblokkeerd voor metingen tijdens opwarmen?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opwarm_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opwarm_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opwarm_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opwarm_controle == 'nvt'}X{/if}</strong></td>
		</tr>								
		<tr>
			<td style=" width:60%">Is de nulstelling OK?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.nulstelling_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.nulstelling_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.nulstelling_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.nulstelling_controle == 'nvt'}X{/if}</strong></td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="3" cellspacing="0" class="thinborder" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td colspan="5" style="background-color:rgb(153, 153, 153); text-align:center"><strong>RESULTAAT STATISCHE EN DYNAMISCHE TEST</strong></td>
		</tr>
		<tr>
			<td colspan="3" style="background-color:rgb(204, 204, 204); text-align:center; width:80%">STATISCHE TEST MET REFERENTIEFILTER, (MAXIMALE AFWIJKING 1,5%)</td>
			<td colspan="2" style="background-color:rgb(204, 204, 204); text-align:center; width:20%">DYNAMISCHE TEST. DEZE TEST MOET EEN RESULTAAT TUSSEN DE 0,18 EN 0,22 SECONDEN GEVEN.</td>
		</tr>
		<tr>
			<td colspan="1" style="width:20%">Filterwaarde</td>
			<td colspan="1" style="width:20%">Verschil</td>
			<td colspan="1" style="width:40%">Gemeten waarde</td>
			<td rowspan="2" style="text-align:center; width:20%"><span style="font-size:16px"><strong>{$reportvalues.dyn_test}<br />sec</strong></span></td>
		</tr>
		<tr>
			<td colspan="1" style="width:20%">{$reportvalues.ref_filter1}</td>
			<td colspan="1" style="width:20%">{$reportvalues.diff_filter1}</td>
			<td colspan="1" style="width:40%">{$reportvalues.meas_filter1}</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="3" cellspacing="0" class="thinborder" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td style="width:80%">Goedkeuringsstickers aangebracht?</td>
			<td style="text-align:center; width:3%"><strong>{if $reportvalues.keurstickers == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:7%">JA</td>
			<td style="text-align:center; width:3%"><strong>{if $reportvalues.keurstickers == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:7%">NEE</td>
		</tr>
		<tr>
			<td style="width:80%">Zijn de verzegelingsstickers aangebracht?</td>
			<td style="text-align:center; width:3%"><strong>{if $reportvalues.verz_stickers == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:7%">JA</td>
			<td style="text-align:center; width:3%"><strong>{if $reportvalues.verz_stickers == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:7%">NEE</td>
		</tr>
	</tbody>
</table>

	{if $reportvalues.mechanic_remarks != ""}
	<p><span><strong>Verrichte werkzaamheden / opmerkingen:</strong></span></p>

	<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;" class="thinborder">
		<tbody>
			<tr>
				<td>{$reportvalues.mechanic_remarks}</td>
			</tr>
		</tbody>
	</table>
	{/if}

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