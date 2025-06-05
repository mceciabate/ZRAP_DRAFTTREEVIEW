@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity for composition'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_AgencyTP_HD
  as select from ZR_AGENCY_HR
composition of exact one to many ZR_EmployeeTP_HD as _Employee 
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
      _Employee
}
