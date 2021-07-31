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
<div id="report_filename" style="display: none">checklist_koplampafstelunit_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">CHECKLIST PERIODIEKE CONTROLE AAN KOPLAMPAFSTEL UNITS</td>
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
						<td colspan="4" style="background-color:rgb(153, 153, 153); text-align:center; border: 0.1px solid #000;"><span><strong>KLANT / APPARAAT GEGEVENS</strong></span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Bedrijfsnaam</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.accountname}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Merk apparaat</span></td>
						<td style="width:30%; text-align:left; border: 0.1px solid #000;"><span>{$reportmeta.cf_543}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Adres</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.ship_street}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Type apparaat</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.productname}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">PC / Plaats</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.ship_code}&nbsp;{$reportmeta.ship_city}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Serienummer</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.serialnumber}</span></td>
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
			<td style="background-color:rgb(204, 204, 204); width:100%" colspan="2"><span><strong>Controlepunten</strong></span></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn alle opschriften op het typeplaatje aanwezig en kloppen ze?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.sticker_controle == 'ja'}
					Ja
				{elseif $reportvalues.sticker_controle == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.sticker_controle == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.sticker_controle_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.sticker_controle_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking uitleesscherm en bediening</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.werking_uitleesscherm == 'goed'}
					Goed
				{elseif $reportvalues.werking_uitleesscherm == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.werking_uitleesscherm == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.werking_uitleesscherm == 'nvt'}
					Niet van toepassing
				{/if}
				</strong>
				{if $reportvalues.werking_uitleesscherm_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.werking_uitleesscherm_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Overmatige speling op de kolom en/of vastzetinrichting?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.speling_kolom == 'ja'}
					Ja
				{elseif $reportvalues.speling_kolom == 'na_reparatie'}
					Goed na reparatie
				{elseif $reportvalues.speling_kolom == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.speling_kolom_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.speling_kolom_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Is de vloer in de rijrichting waterpas?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.vloer_waterpas == 'goed'}
					Ja
				{elseif $reportvalues.vloer_waterpas == 'niet_goed'}
					Niet goed
				{/if}
				</strong>
				{if $reportvalues.vloer_waterpas_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.vloer_waterpas_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Is de afwijking van de vloer ook meegenomen in de koplamafstelunit?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.afwijking_vloer == 'ja'}
					Ja
				{elseif $reportvalues.afwijking_vloer == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.afwijking_vloer_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.afwijking_vloer_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Staat de koplampafstelunit over de breedte waterpas (stelwiel onderaan)?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.breedte_waterpas == 'goed'}
					Goed
				{elseif $reportvalues.breedte_waterpas == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.breedte_waterpas == 'na_reparatie'}
					Na reparatie
				{/if}
				</strong>
				{if $reportvalues.breedte_waterpas_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.breedte_waterpas_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Is de controlespiegel/laser correct in lijn afgesteld met de body van de unit?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.spiegel_laser == 'goed'}
					Goed
				{elseif $reportvalues.spiegel_laser == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.spiegel_laser == 'na_reparatie'}
					Na reparatie
				{/if}
				</strong>
				{if $reportvalues.spiegel_laser_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.spiegel_laser_opmerking}</i>
				{/if}
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

<p><span><strong>Gegevens technicus en datum van uitvoering:</strong></span></p>

<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td style="width:25%; border: 0.1px solid #000;">Keuringstechnicus:</td>
			<td style="width:25%; border: 0.1px solid #000;"><span>{$reportmeta.user.first_name}&nbsp;{$reportmeta.user.last_name}</span></td>
			<td style="width:25%; border: 0.1px solid #000;">Datum:</td>
			<td style="width:25%; border: 0.1px solid #000;">{$reportmeta.date}</td>
		</tr>
	</tbody>
</table>{/strip}