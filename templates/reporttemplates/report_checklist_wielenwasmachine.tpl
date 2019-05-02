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
<div id="report_filename" style="display: none">checklist_wielenwasser_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">CHECKLIST PERIODIEKE CONTROLE AAN WIELENWAS MACHINES</td>
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
					Goed, na reparatie
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
			<td style=" width:60%">Werking omwentelmotor wiel</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.omwentelmotor == 'goed'}
					Ja
				{elseif $reportvalues.omwentelmotor == 'na_reparatie'}
					Goed na reparatie
				{elseif $reportvalues.omwentelmotor == 'niet_goed'}
					Niet goed
				{/if}
				</strong>
				{if $reportvalues.omwentelmotor_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.omwentelmotor_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking waterpompmotor</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.waterpompmotor == 'goed'}
					Ja
				{elseif $reportvalues.waterpompmotor == 'na_reparatie'}
					Goed na reparatie
				{elseif $reportvalues.waterpompmotor == 'niet_goed'}
					Niet goed
				{/if}
				</strong>
				{if $reportvalues.waterpompmotor_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.waterpompmotor_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking deurschakelaar</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.deurschakelaar == 'goed'}
					Ja
				{elseif $reportvalues.deurschakelaar == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.deurschakelaar == 'afgesteld'}
					Afgesteld
				{/if}
				</strong>
				{if $reportvalues.deurschakelaar_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.deurschakelaar_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Hoeveelheid granulaat</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.granulaat == 'goed'}
					Ja
				{elseif $reportvalues.granulaat == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.granulaat == 'aangevuld'}
					Aangevuld
				{/if}
				</strong>
				{if $reportvalues.granulaat_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.granulaat_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Waterniveau</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.waterniveau == 'goed'}
					Goed
				{elseif $reportvalues.waterniveau == 'te_laag'}
					Te laag
				{elseif $reportvalues.waterniveau == 'te_hoog'}
					Te hoog
				{/if}
				</strong>
				{if $reportvalues.waterniveau_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.waterniveau_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Watertemperatuur</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.watertemperatuur == 'goed'}
					Goed
				{elseif $reportvalues.watertemperatuur == 'te_warm'}
					Te warm
				{elseif $reportvalues.watertemperatuur == 'te_koud'}
					Te koud
				{/if}
				</strong>
				{if $reportvalues.watertemperatuur_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.watertemperatuur_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Algemene conditie spoel compartiment</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.spoel_compartiment == 'goed'}
					Goed
				{elseif $reportvalues.spoel_compartiment == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.spoel_compartiment == 'gereinigd'}
					Gereinigd
				{/if}
				</strong>
				{if $reportvalues.spoel_compartiment_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.spoel_compartiment_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Conditie spuitnozzles</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.spuitnozzles == 'goed'}
					Goed
				{elseif $reportvalues.spuitnozzles == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.spuitnozzles == 'gereinigd'}
					Gereinigd
				{/if}
				</strong>
				{if $reportvalues.spuitnozzles_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.spuitnozzles_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Conditie lagers en assen</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.lagers_assen == 'goed'}
					Goed
				{elseif $reportvalues.lagers_assen == 'niet_goed'}
					Niet goed
				{/if}
				</strong>
				{if $reportvalues.lagers_assen_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.lagers_assen_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking magneetspoelen</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.magneetspoelen == 'goed'}
					Goed
				{elseif $reportvalues.magneetspoelen == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.magneetspoelen == 'gerepareerd'}
					Gerepareerd
				{/if}
				</strong>
				{if $reportvalues.magneetspoelen_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.magneetspoelen_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Instellingen softwareverloop</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.softwareverloop == 'goed'}
					Goed
				{elseif $reportvalues.softwareverloop == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.softwareverloop == 'aangepast'}
					Aangepast
				{/if}
				</strong>
				{if $reportvalues.softwareverloop_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.softwareverloop_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Software versie:</td>
			<td style="width:40%">
				<strong>
					{$reportvalues.software_versie}
				</strong>
				{if $reportvalues.software_versie_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.software_versie_opmerking}</i>
				{/if}
			</td>
		</tr>
	</tbody>
</table>
<p></p>

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