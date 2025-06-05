@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@OData.hierarchy.recursiveHierarchy:[{ entity.name: 'ZI_EmployeeHN_HD' }]
@Search.searchable: true
@EndUserText.label: 'Projection for Employee'

define view entity ZC_EMPLOYEETP_HD
  as projection on ZR_EmployeeTP_HD
{
      @ObjectModel.text.element: ['AgencyName']
  key Agency,
  key Employee,

      _Agency.Name       as AgencyName,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.87
      FirstName,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.87
      LastName,
      Salary,
      @Consumption.valueHelpDefinition: [
        { entity: {
            name: 'I_CurrencyStdVH',
            element: 'Currency'
          },
          useForValidation: true
        }
      ]
      SalaryCurrency,
      //      @Consumption.valueHelpDefinition: [
      //          {
      //            entity: { name: '/DMO/I_Employee_ManagerVH_HD', element: 'Employee' },
      //            additionalBinding: [{ element: 'Agency', localElement: 'Agency', usage: #FILTER }]
      //          }
      //        ]
      Manager,
      _Manager.FirstName as ManagerFirstName,
      _Manager.LastName  as ManagerLastName,
      SiblingOrderNumber,
      LocalLastChangedAt,

      /* Associations */
      _Agency   : redirected to parent ZC_AGENCYTP_HD,
      _Manager  : redirected to ZC_EMPLOYEETP_HD,
      _Employee : redirected to ZC_EMPLOYEETP_HD,
      _Currency

}
