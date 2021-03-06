﻿
// =============================================
// This Class is generated by BuildProject
// Author:	Bop
// Create date:	17/08/2016 11:31
// Description:	
// Revise History:	
// =============================================

using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Linq;
using System.Collections.Generic;
using BIT.Objects;
using BIT.Common;
using BIT.DataHelper;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace BIT.DataHelper
{ 
	public class SNUOC_DH : DataAccessBase
	{	
		public IEnumerable<SNUOC> SelectAllItems()
		{
			return defaultDB.ExecuteSprocAccessor<SNUOC>("sp_SNUOC_SelectAllItems");
		}
	}

    public class SPACKAGE_DH : DataAccessBase
    {
        public IEnumerable<SPACKAGE> SelectAllItems()
        {
            return defaultDB.ExecuteSprocAccessor<SPACKAGE>("sp_SPACKAGE_SelectAllItems");
        }

    }

    public class PACKAGE_TRANSACTION_DH : DataAccessBase
    {
        public IEnumerable<PACKAGE_TRANSACTION> SelectAllItems()
        {
            return defaultDB.ExecuteSprocAccessor<PACKAGE_TRANSACTION>("sp_PACKAGE_TRANSACTION_SelectAllItems");
        }

        public PACKAGE_TRANSACTION SelectItem(int id)
        {
            return defaultDB.ExecuteSprocAccessor<PACKAGE_TRANSACTION>("sp_PACKAGE_TRANSACTION_SelectItemByID", id).FirstOrDefault();
        }

        public PACKAGE_TRANSACTION SelectActiveItem(string codeId)
        {
            return defaultDB.ExecuteSprocAccessor<PACKAGE_TRANSACTION>("sp_PACKAGE_TRANSACTION_SelectActivePackage", codeId).FirstOrDefault();
        }
        

        public IEnumerable<PACKAGE_TRANSACTION> SelectAllItemsByCodeID(string codeID)
        {
            return defaultDB.ExecuteSprocAccessor<PACKAGE_TRANSACTION>("sp_PACKAGE_TRANSACTION_SelectAllItems",codeID);
        }

        public void InsertItem(PACKAGE_TRANSACTION obj, int month)
        {
            defaultDB.ExecuteNonQuery("sp_PACKAGE_TRANSACTION_Insert",
            obj.CODEID
           ,obj.PACKAGEID
           ,obj.START_DATE
           ,obj.END_DATE
           ,obj.EXPIRED
           ,obj.GH1
           ,obj.GH2
           ,obj.STATUS_GH
           ,obj.CREATE_DATE
           ,obj.TRANSACTION_PACKAGE
           ,obj.AMOUNT
           ,obj.STATUS_PH
           ,month     
           );
        }

        public void updateItem(PACKAGE_TRANSACTION obj)
        {
            defaultDB.ExecuteNonQuery("sp_PACKAGE_TRANSACTION_UPDATE_BYID",
                        obj.ID
                        ,obj.CODEID
                        , obj.PACKAGEID
                        , obj.START_DATE
                        , obj.END_DATE
                        , obj.EXPIRED
                        , obj.GH1
                        , obj.GH2
                        , obj.STATUS_GH
                        , obj.CREATE_DATE
                        , obj.TRANSACTION_PACKAGE
                        , obj.AMOUNT
                        , obj.STATUS_PH
                        );
        }

        public void updateGH1(PACKAGE_TRANSACTION obj)
        {
            defaultDB.ExecuteNonQuery("sp_PACKAGE_TRANSACTION_UPDATE_GH1",
                        obj.ID
                        , obj.CODEID
                        , obj.PACKAGEID
                        ,obj.AMOUNT
                        );
        }
        public void updateGH2(PACKAGE_TRANSACTION obj)
        {
            defaultDB.ExecuteNonQuery("sp_PACKAGE_TRANSACTION_UPDATE_GH2",
                        obj.ID
                        , obj.CODEID
                        , obj.PACKAGEID
                        ,obj.AMOUNT
                        );
        }
        public bool isExistTransaction(string transaction)
        {
            IDataReader dr = defaultDB.ExecuteReader("sp.PACKAGE_TRANSACTION_IsExistTransaction"
                , transaction);

            bool bol = dr.Read();
            dr.Close();

            return bol;
        }
        public bool isAllPackageExpire(string CodeID)
        {
            IDataReader dr = defaultDB.ExecuteReader("sp_PACKAGE_TRANSACTION_SelectExpiredItems"
                , CodeID);

            bool bol = dr.Read();
            dr.Close();

            return bol;
        }

        //  - 07/09/2016
        public PACKAGE_TRANSACTION SelectItemByCodeId(string CodeId)
        {
            return defaultDB.ExecuteSprocAccessor<PACKAGE_TRANSACTION>("sp_PACKAGE_TRANSACTION_SelectItemByCodeId", CodeId).FirstOrDefault();
        }

        public bool IsPackageExpire(string CodeID)
        {
            IDataReader dr = defaultDB.ExecuteReader("sp_PACKAGE_TRANSACTION_IsPackageExpire"
                , CodeID);

            bool bol = dr.Read();
            dr.Close();

            return bol;
        }
    }
}
