{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.KerberosAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.KerberosAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html Use Kerberos Authentication> in the /Amazon EMR Management Guide/ .
--
--
--
-- /See:/ 'kerberosAttributes' smart constructor.
data KerberosAttributes = KerberosAttributes'
  { _kaRealm ::
      !(Maybe Text),
    _kaADDomainJoinUser ::
      !(Maybe Text),
    _kaKdcAdminPassword ::
      !(Maybe Text),
    _kaADDomainJoinPassword ::
      !(Maybe Text),
    _kaCrossRealmTrustPrincipalPassword ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'KerberosAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kaRealm' - The name of the Kerberos realm to which all nodes in a cluster belong. For example, @EC2.INTERNAL@ .
--
-- * 'kaADDomainJoinUser' - Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain.
--
-- * 'kaKdcAdminPassword' - The password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster.
--
-- * 'kaADDomainJoinPassword' - The Active Directory password for @ADDomainJoinUser@ .
--
-- * 'kaCrossRealmTrustPrincipalPassword' - Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms.
kerberosAttributes ::
  KerberosAttributes
kerberosAttributes =
  KerberosAttributes'
    { _kaRealm = Nothing,
      _kaADDomainJoinUser = Nothing,
      _kaKdcAdminPassword = Nothing,
      _kaADDomainJoinPassword = Nothing,
      _kaCrossRealmTrustPrincipalPassword = Nothing
    }

-- | The name of the Kerberos realm to which all nodes in a cluster belong. For example, @EC2.INTERNAL@ .
kaRealm :: Lens' KerberosAttributes (Maybe Text)
kaRealm = lens _kaRealm (\s a -> s {_kaRealm = a})

-- | Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain.
kaADDomainJoinUser :: Lens' KerberosAttributes (Maybe Text)
kaADDomainJoinUser = lens _kaADDomainJoinUser (\s a -> s {_kaADDomainJoinUser = a})

-- | The password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster.
kaKdcAdminPassword :: Lens' KerberosAttributes (Maybe Text)
kaKdcAdminPassword = lens _kaKdcAdminPassword (\s a -> s {_kaKdcAdminPassword = a})

-- | The Active Directory password for @ADDomainJoinUser@ .
kaADDomainJoinPassword :: Lens' KerberosAttributes (Maybe Text)
kaADDomainJoinPassword = lens _kaADDomainJoinPassword (\s a -> s {_kaADDomainJoinPassword = a})

-- | Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms.
kaCrossRealmTrustPrincipalPassword :: Lens' KerberosAttributes (Maybe Text)
kaCrossRealmTrustPrincipalPassword = lens _kaCrossRealmTrustPrincipalPassword (\s a -> s {_kaCrossRealmTrustPrincipalPassword = a})

instance FromJSON KerberosAttributes where
  parseJSON =
    withObject
      "KerberosAttributes"
      ( \x ->
          KerberosAttributes'
            <$> (x .:? "Realm")
            <*> (x .:? "ADDomainJoinUser")
            <*> (x .:? "KdcAdminPassword")
            <*> (x .:? "ADDomainJoinPassword")
            <*> (x .:? "CrossRealmTrustPrincipalPassword")
      )

instance Hashable KerberosAttributes

instance NFData KerberosAttributes

instance ToJSON KerberosAttributes where
  toJSON KerberosAttributes' {..} =
    object
      ( catMaybes
          [ ("Realm" .=) <$> _kaRealm,
            ("ADDomainJoinUser" .=) <$> _kaADDomainJoinUser,
            ("KdcAdminPassword" .=) <$> _kaKdcAdminPassword,
            ("ADDomainJoinPassword" .=)
              <$> _kaADDomainJoinPassword,
            ("CrossRealmTrustPrincipalPassword" .=)
              <$> _kaCrossRealmTrustPrincipalPassword
          ]
      )
