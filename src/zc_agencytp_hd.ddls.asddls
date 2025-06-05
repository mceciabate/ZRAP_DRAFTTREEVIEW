@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for Agency'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_AGENCYTP_HD
  provider contract transactional_query
  as projection on ZR_AgencyTP_HD
{
  key Agency,
      Name,
      Street,
      PostalCode,
      City,
      CountryCode,
      PhoneNumber,
      EMailAddress,
      WebAddress,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Country,
      _Employee: redirected to composition child ZC_EMPLOYEETP_HD
}
