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
<div id="report_filename" style="display: none">keuring_viergastester_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">REGISTRATIE FORMULIER CRF-5 VOOR GEBRUIK BIJ HERKEURING UITLAATGASTESTERS</td>
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
						<td colspan="4" style="background-color:rgb(153, 153, 153); text-align:center; border: 0.1px solid #000;"><span><strong>KLANT / VIERGASTESTER GEGEVENS</strong></span></td>
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
			<td style=" width:60%">Is het originele (MID) certificaat bij de uitlaatgastester aanwezig?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.mid_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.mid_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.mid_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.mid_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn alle software versies en checksums conform de originele toelating?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.software_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.software_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.software_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.software_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de P.E.F. waarde fysiek op de machine en in de aanwijsinrichting terug te vinden?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.pef_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.pef_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.pef_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.pef_controle == 'nvt'}X{/if}</strong></td>
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
			<td style=" width:60%">Is de opname slang onbeschadigd?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de lektest met positief resultaat doorlopen?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.lektest_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.lektest_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.lektest_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.lektest_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is het resultaat van de HC residu test minder dan 20 ppm vol?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.hc_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.hc_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.hc_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.hc_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de uitlaatgastester geblokkeerd voor metingen tijdens opwarmen?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opwarm_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opwarm_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opwarm_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opwarm_controle == 'nvt'}X{/if}</strong></td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" class="thinborder" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td colspan="14" style="background-color:rgb(153, 153, 153); text-align:center"><strong>RESULTAAT CONTROLES TIJDENS KALIBRATIE</strong></td>
		</tr>
		<tr>
			<td colspan="4" style="background-color:rgb(204, 204, 204); text-align:center; width:60%">RESULTAAT CONTROLE MET LAAG GAS</td>
			<td colspan="3" style="background-color:rgb(204, 204, 204); text-align:center; width:40%">PEF WAARDE, LOW FLOW TEST EN RESPONSIETEST</td>
		</tr>
		<tr>
			<td colspan="2" style="width:20%; font-size: 7pt;">Samenstelling referentiegas (laag)</td>
			<td style="width:20%; font-size: 7pt;">Berekende fout</td>
			<td style="width:20%; font-size: 7pt;">Gemeten waarde</td>
			<td style="width:12%; font-size: 7pt;">P.E.F. waarde</td>
			<td style="width:12%; font-size: 7pt;">Is de Low-Flow test OK?</td>
			<td style="width:16%; font-size: 7pt;">Is de responsietest OK voor alle gassen?</td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%">CO</td>
			<td style="text-align:right; width:13%"><strong>{$reportvalues.laag_ref_CO} % vol</strong></td>
			<td style="width:20%">{$reportvalues.laag_verschil_CO}</td>
			<td style="text-align:center; width:20%"><strong>{$reportvalues.laag_gemeten_CO} % vol</strong></td>
			<td colspan="1" rowspan="17" style="text-align:center; width:12%"><strong>{$reportvalues.pef}</strong></td>
			<td colspan="1" rowspan="17" style="text-align:center; width:12%">
			<table border="0" cellpadding="8" cellspacing="0" style="border-collapse:collapse;font-size: 7pt;">
				<tbody>
					<tr>
						<td><strong>{if $reportvalues.lowflow_controle == 'ja'}X{/if}</strong></td>
						<td>JA</td>
					</tr>
					<tr>
						<td><strong>{if $reportvalues.lowflow_controle == 'nee'}X{/if}</strong></td>
						<td>NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1" rowspan="17" style="text-align:center; width:16%">
			<table border="0" cellpadding="3" cellspacing="0" style="font-size: 7pt;">
				<tbody>
					<tr>
						<td><strong>{if $reportvalues.responsietest_controle == 'ja'}X{/if}</strong></td>
						<td>JA</td>
					</tr>
					<tr>
						<td><strong>{if $reportvalues.responsietest_controle == 'nee'}X{/if}</strong></td>
						<td>NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">CO2</td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.laag_ref_CO2} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.laag_verschil_CO2}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.laag_gemeten_CO2} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">HC</td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.laag_ref_HC} ppm vol<br />({math equation="x * y" x=$reportvalues.laag_ref_HC y=$reportvalues.pef} ppm vol)</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.laag_verschil_HC}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.laag_gemeten_HC} ppm vol</strong></td>
		</tr>
		<tr>
			<td colspan="4" style="background-color:rgb(204, 204, 204); text-align:center; width:60%;">RESULTAAT CONTROLE MET MIDDEN GAS</td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">CO</td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.mid_ref_CO} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.mid_verschil_CO}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.mid_gemeten_CO} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">CO<sup>2</sup></td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.mid_ref_CO2} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.mid_verschil_CO2}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.mid_gemeten_CO2} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">O<sup>2</sup></td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.mid_ref_O2} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.mid_verschil_O2}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.mid_gemeten_O2} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">HC</td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.mid_ref_HC} ppm vol<br />({math equation="x * y" x=$reportvalues.mid_ref_HC y=$reportvalues.pef} ppm vol)</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.mid_verschil_HC}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.mid_gemeten_HC} ppm vol</strong></td>
		</tr>
		<tr>
			<td colspan="4" style="background-color:rgb(204, 204, 204); text-align:center; width:60%">RESULTAAT CONTROLE MET HOOG GAS</td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">CO</td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.hoog_ref_CO} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.hoog_verschil_CO}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.hoog_gemeten_CO} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">CO<sup>2</sup></td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.hoog_ref_CO2} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.hoog_verschil_CO2}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.hoog_gemeten_CO2} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">HC</td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.hoog_ref_HC} ppm vol<br />({math equation="x * y" x=$reportvalues.hoog_ref_HC y=$reportvalues.pef} ppm vol)</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.hoog_verschil_HC}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.hoog_gemeten_HC} ppm vol</strong></td>
		</tr>
		<tr>
			<td colspan="4" style="background-color:rgb(204, 204, 204); text-align:center; width:60%">RESULTAAT CONTROLE MET GASMENGSEL G</td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">CO</td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.g_ref_CO} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.g_verschil_CO}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.g_gemeten_CO} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">CO<sup>2</sup></td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.g_ref_CO2} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.g_verschil_CO2}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.g_gemeten_CO2} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">O<sup>2</sup></td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.g_ref_O2} % vol</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.g_verschil_O2}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.g_gemeten_O2} % vol</strong></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153); width:7%; font-size: 7pt;">HC</td>
			<td style="text-align:right; width:13%; font-size: 7pt;"><strong>{$reportvalues.g_ref_HC} ppm vol<br />({math equation="x * y" x=$reportvalues.g_ref_HC y=$reportvalues.pef} ppm vol)</strong></td>
			<td style="width:20%; font-size: 7pt;">{$reportvalues.g_verschil_HC}</td>
			<td style="text-align:center; width:20%; font-size: 7pt;"><strong>{$reportvalues.g_gemeten_HC} ppm vol</strong></td>
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