using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PurchasingTableAdapters;

/// <summary>
/// Summary description for DataClasses
/// </summary>
public class DataClasses
{
    public DataClasses()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    
    public Purchasing.getVendorsDataTable getVendors(string selectCriteria, string selectValue)
    {
        Purchasing.getVendorsDataTable dtVendors = new Purchasing.getVendorsDataTable();
        getVendorsTableAdapter taVendors = new getVendorsTableAdapter();
        switch (selectCriteria)
        {
            case "Name":
                taVendors.FillByName(dtVendors,selectValue);
                break;
            case "State":
                taVendors.FillByState(dtVendors,selectValue);
                break;
            default:
                taVendors.Fill(dtVendors);
                break;
        }

        // add HTTP:\\ to begining of each website name
        string fullName;
        foreach (DataRow row in dtVendors.Rows)
        {
            fullName = "http://" + row["Website"];
            row["Website"] = fullName;
        }

        return dtVendors;
    }

        
    }