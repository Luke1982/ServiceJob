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
	@media screen {
		span.smalltext {
			font-size: 10px;
		}
	}
{/literal}
</style>
<div id="report_filename" style="display: none">keuring_pedaaldrukmeter_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">REGISTRATIE FORMULIER CRF-2 VOOR GEBRUIK BIJ HERKEURING PEDAALDRUKMETERS</td>
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
						<td colspan="4" style="background-color:rgb(153, 153, 153); text-align:center; border: 0.1px solid #000;"><span><strong>KLANT / PEDAALDRUKMETER GEGEVENS</strong></span></td>
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
			<td style=" width:60%">Indicatieve omgevingstemperatuur boven de 0 graden Celsius?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.omgeving_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.omgeving_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.omgeving_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.omgeving_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Opschriften fabrikaat, type en serienummer aanwezig?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opschriften_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opschriften_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opschriften_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.opschriften_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Alle losse en vaste onderdelen conform typegoedkeur?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.onderdelen_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.onderdelen_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.onderdelen_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.onderdelen_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de originele Nederlandse handleiding aanwezig?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Is de originele Nederlandse handleiding aanwezig?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Elektronische en mechanische werking goed?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.werking_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.werking_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.werking_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.werking_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Afleesinrichting gecontroleerd?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.aflees_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.aflees_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.aflees_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.aflees_controle == 'nvt'}X{/if}</strong></td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td valign="top" rowspan="4" width="60%" style="width:60%">
			<table border="0" cellpadding="3" cellspacing="0" class="thinborder" width="100%" style="border-collapse:collapse;">
				<tbody>
					<tr>
						<td colspan="1" width="10%" rowspan="2" style="background-color:rgb(204, 204, 204); text-align:center; width:10%">Belasting (N)</td>
						<td colspan="3" width="45%" style="background-color:rgb(51, 51, 51); text-align:center; width:20%"><span style="color:rgb(255, 255, 255)"><strong>Opgaand 8 stappen t/m 800N</strong></span></td>
						<td colspan="3" width="45%" style="background-color:rgb(51, 51, 51); text-align:center; width:20%"><strong><span style="color:rgb(255, 255, 255)">Neergaand 2 stappen 400N en 0N</span></strong></td>
					</tr>
					<tr>
						<td width="30%" style="background-color:rgb(204, 204, 204); text-align:center;">Belasting Centrisch (N)</td>
						<td width="10%" style="background-color:rgb(204, 204, 204); text-align:center;">Afw. (N)</td>
						<td width="10%" style="background-color:rgb(204, 204, 204); text-align:center;">Afw. (%)</td>
						<td width="20%" style="background-color:rgb(204, 204, 204); text-align:center;">Belasting Centrisch (N)</td>
						<td width="10%" style="background-color:rgb(204, 204, 204); text-align:center;">Afw. (N)</td>
						<td width="10%" style="background-color:rgb(204, 204, 204); text-align:center;">Afw. (%)</td>
					</tr>
					<tr>
						<td width="10%" style="background-color:rgb(204, 204, 204); text-align:center;">0</td>
						<td width="30%" style="text-align:center;"><strong>{$reportvalues.opgaand_0}</strong></td>
						<td width="10%" style="text-align:center;"><strong>{$reportvalues.afw_0N_opgaand}</strong></td>
						<td width="10%" style="text-align:center;"><strong>{$reportvalues.afw_proc_0N_opgaand}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.neergaand_0}</strong></td>
						<td width="10%" style="text-align:center;"><strong>{$reportvalues.afw_0N_neergaand}</strong></td>
						<td width="10%" style="text-align:center;"><strong>{$reportvalues.afw_proc_0N_neergaand}</strong></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204);text-align:center;">100</td>
						<td style="text-align:center;"><strong>{$reportvalues.opgaand_100}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_100N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_100N_opgaand}</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204);text-align:center;">200</td>
						<td style="text-align:center;"><strong>{$reportvalues.opgaand_200}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_200N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_200N_opgaand}</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204);text-align:center;">300</td>
						<td style="text-align:center;"><strong>{$reportvalues.opgaand_300}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_300N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_300N_opgaand}</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204);text-align:center;">400</td>
						<td style="text-align:center;"><strong>{$reportvalues.opgaand_400}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_400N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_400N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.neergaand_400}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_400N_neergaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_400N_neergaand}</strong></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204);text-align:center;">500</td>
						<td style="text-align:center;"><strong>{$reportvalues.opgaand_500}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_500N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_500N_opgaand}</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204);text-align:center;">600</td>
						<td style="text-align:center;"><strong>{$reportvalues.opgaand_600}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_600N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_600N_opgaand}</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204);text-align:center;">700</td>
						<td style="text-align:center;"><strong>{$reportvalues.opgaand_700}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_700N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_700N_opgaand}</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204);text-align:center;">800</td>
						<td style="text-align:center;"><strong>{$reportvalues.opgaand_800}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_800N_opgaand}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_800N_opgaand}</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
						<td style="background-color:rgb(51, 51, 51);"><strong>&nbsp;</strong></td>
					</tr>
					<tr>
						<td colspan="7" width="100%" style="text-align:center;">Maximale afwijking: tot 500N: 50N +/-&nbsp;&nbsp;&nbsp; boven 500N: 10% +/-</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td rowspan="4" style="width:5%">&nbsp;</td>
			<td style="text-align:right; vertical-align:top; width:35%">
			<table border="0" cellpadding="3" cellspacing="0" class="thinborder" width="100%" style="border-collapse:collapse;">
				<tbody>
					<tr>
						<td colspan="4" style="background-color:rgb(51, 51, 51); text-align:center"><strong><span style="color:rgb(255, 255, 255)">Opgaand 4 posities zijden naar 200N (max. 80N afwijking)</span></strong></td>
					</tr>
					<tr>
						<td colspan="2" width="60%" style="background-color:rgb(204, 204, 204);">Belasting zijden 1 t/m 4</td>
						<td width="20%" style="background-color:rgb(204, 204, 204); text-align:center;">Afw.<br />
						(N)</td>
						<td width="20%" style="background-color:rgb(204, 204, 204); text-align:center;">Afw.<br />
						(%)</td>
					</tr>
					<tr>
						<td width="10%"><strong>1</strong></td>
						<td width="50%" style="text-align:center;"><strong>{$reportvalues.kwadrant1}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.afw_200N_kwadr1}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.afw_proc_200N_kwadr1}</strong></td>
					</tr>
					<tr>
						<td width="10%"><strong>2</strong></td>
						<td width="50%" style="text-align:center;"><strong>{$reportvalues.kwadrant2}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.afw_200N_kwadr2}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.afw_proc_200N_kwadr2}</strong></td>
					</tr>
					<tr>
						<td width="10%"><strong>3</strong></td>
						<td width="50%" style="text-align:center;"><strong>{$reportvalues.kwadrant3}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.afw_200N_kwadr3}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.afw_proc_200N_kwadr3}</strong></td>
					</tr>
					<tr>
						<td width="10%" style="width:5%"><strong>4</strong></td>
						<td width="50%" style="text-align:center;"><strong>{$reportvalues.kwadrant4}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.afw_200N_kwadr4}</strong></td>
						<td width="20%" style="text-align:center;"><strong>{$reportvalues.afw_proc_200N_kwadr4}</strong></td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
		<tr>
			<td width="35%" height="3">&nbsp;</td>
		</tr>		
		<tr>
			<td width="35%" height="80" valign="middle" style="vertical-align:middle; text-align: center;"><img alt="" src="storage/images/kwadranten_pedaaldrukmeter.jpg" height="75" /></td>
		</tr>
		<tr>
			<td style="vertical-align:top; width:35%">
			<table border="0" cellpadding="3" cellspacing="0" class="thinborder" width="100%" style="border-collapse:collapse;">
				<tbody>
					<tr>
						<td colspan="3" width="100%" style="background-color:rgb(51, 51, 51); text-align:center"><strong><span style="color:rgb(255, 255, 255)">Opgaand 2 stappen naar 600N</span></strong></td>
					</tr>
					<tr>
						<td width="60%" style="background-color:rgb(204, 204, 204);">Belasting centrisch naar 600N</td>
						<td width="20%" style="background-color:rgb(204, 204, 204); text-align:center;">Afw.<br />
						(N)</td>
						<td width="20%" style="background-color:rgb(204, 204, 204); text-align:center;">Afw.<br />
						(%)</td>
					</tr>
					<tr>
						<td style="text-align:center;">{$reportvalues.opgaand_600N_1}</td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_600N_1}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_600N_1}</strong></td>
					</tr>
					<tr>
						<td style="text-align:center;">{$reportvalues.opgaand_600N_1}</td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_600N_2}</strong></td>
						<td style="text-align:center;"><strong>{$reportvalues.afw_proc_600N_2}</strong></td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>
<p></p>

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