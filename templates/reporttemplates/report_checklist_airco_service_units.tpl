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
<div id="report_filename" style="display: none">checklist_ac_service_unit_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">CHECKLIST PERIODIEKE CONTROLE AAN AIRCO SERVICE UNITS MACHINES</td>
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
			<td style=" width:60%">Werking weegschaal koudemiddel</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.weegschaal_koudemiddel == 'goed'}
					Ja
				{elseif $reportvalues.weegschaal_koudemiddel == 'na_reparatie'}
					Goed na reparatie
				{elseif $reportvalues.weegschaal_koudemiddel == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.weegschaal_koudemiddel == 'gekalibreerd'}
					Gekalibreerd
				{/if}
				</strong>
				{if $reportvalues.weegschaal_koudemiddel_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.weegschaal_koudemiddel_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking olie weegscha(a)l(en)</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.weegschaal_olie == 'goed'}
					Ja
				{elseif $reportvalues.weegschaal_olie == 'na_reparatie'}
					Goed na reparatie
				{elseif $reportvalues.weegschaal_olie == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.weegschaal_olie == 'gekalibreerd'}
					Gekalibreerd
				{/if}
				</strong>
				{if $reportvalues.weegschaal_olie_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.weegschaal_olie_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking druksensor(en)</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.druksensoren == 'goed'}
					Ja
				{elseif $reportvalues.druksensoren == 'na_reparatie'}
					Goed na reparatie
				{elseif $reportvalues.druksensoren == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.druksensoren == 'gekalibreerd'}
					Gekalibreerd
				{/if}
				</strong>
				{if $reportvalues.druksensoren_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.druksensoren_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Conditie koppelingen</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.conditie_koppelingen == 'goed'}
					Ja
				{elseif $reportvalues.conditie_koppelingen == 'niet_goed'}
					Niet goed
				{/if}
				</strong>
				{if $reportvalues.conditie_koppelingen_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.conditie_koppelingen_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Conditie filter</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.conditie_filter == 'goed'}
					Goed
				{elseif $reportvalues.conditie_filter == 'bijna_versleten'}
					Bijna versleten
				{elseif $reportvalues.conditie_filter == 'versleten'}
					Versleten
				{elseif $reportvalues.conditie_filter == 'vervangen'}
					Vervangen
				{/if}
				</strong>
				{if $reportvalues.conditie_filter_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.conditie_filter_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Conditie olie vacuumpomp</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.conditie_vacuumpomp == 'goed'}
					Goed
				{elseif $reportvalues.conditie_vacuumpomp == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.conditie_vacuumpomp == 'vervangen'}
					Vervangen
				{/if}
				</strong>
				{if $reportvalues.conditie_vacuumpomp_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.conditie_vacuumpomp_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking verdeelblok</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.werking_verdeelblok == 'goed'}
					Goed
				{elseif $reportvalues.werking_verdeelblok == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.werking_verdeelblok == 'gereinigd'}
					Gereinigd
				{/if}
				</strong>
				{if $reportvalues.werking_verdeelblok_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.werking_verdeelblok_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking magneetspoelen</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.werking_magneetspoelen == 'goed'}
					Goed
				{elseif $reportvalues.werking_magneetspoelen == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.werking_magneetspoelen == 'gerepareerd'}
					Gerepareerd
				{/if}
				</strong>
				{if $reportvalues.werking_magneetspoelen_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.werking_magneetspoelen_opmerking}</i>
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
			<td style=" width:60%">Update software uitgevoerd?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.software_update == 'ja'}
					Ja
				{elseif $reportvalues.software_update == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.software_update_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.software_update_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Database versie:</td>
			<td style="width:40%">
				<strong>
					{$reportvalues.database_versie}
				</strong>
				{if $reportvalues.database_versie_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.database_versie_opmerking}</i>
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