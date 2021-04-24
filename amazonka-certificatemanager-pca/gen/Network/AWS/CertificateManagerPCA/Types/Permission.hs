{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.Permission where

import Network.AWS.CertificateManagerPCA.Types.ActionType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Permissions designate which private CA actions can be performed by an AWS service or entity. In order for ACM to automatically renew private certificates, you must give the ACM service principal all available permissions (@IssueCertificate@ , @GetCertificate@ , and @ListPermissions@ ). Permissions can be assigned with the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html CreatePermission> action, removed with the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html DeletePermission> action, and listed with the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html ListPermissions> action.
--
--
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission'
  { _pCertificateAuthorityARN ::
      !(Maybe Text),
    _pCreatedAt :: !(Maybe POSIX),
    _pActions :: !(Maybe (List1 ActionType)),
    _pPrincipal :: !(Maybe Text),
    _pSourceAccount :: !(Maybe Text),
    _pPolicy :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCertificateAuthorityARN' - The Amazon Resource Number (ARN) of the private CA from which the permission was issued.
--
-- * 'pCreatedAt' - The time at which the permission was created.
--
-- * 'pActions' - The private CA actions that can be performed by the designated AWS service.
--
-- * 'pPrincipal' - The AWS service or entity that holds the permission. At this time, the only valid principal is @acm.amazonaws.com@ .
--
-- * 'pSourceAccount' - The ID of the account that assigned the permission.
--
-- * 'pPolicy' - The name of the policy that is associated with the permission.
permission ::
  Permission
permission =
  Permission'
    { _pCertificateAuthorityARN = Nothing,
      _pCreatedAt = Nothing,
      _pActions = Nothing,
      _pPrincipal = Nothing,
      _pSourceAccount = Nothing,
      _pPolicy = Nothing
    }

-- | The Amazon Resource Number (ARN) of the private CA from which the permission was issued.
pCertificateAuthorityARN :: Lens' Permission (Maybe Text)
pCertificateAuthorityARN = lens _pCertificateAuthorityARN (\s a -> s {_pCertificateAuthorityARN = a})

-- | The time at which the permission was created.
pCreatedAt :: Lens' Permission (Maybe UTCTime)
pCreatedAt = lens _pCreatedAt (\s a -> s {_pCreatedAt = a}) . mapping _Time

-- | The private CA actions that can be performed by the designated AWS service.
pActions :: Lens' Permission (Maybe (NonEmpty ActionType))
pActions = lens _pActions (\s a -> s {_pActions = a}) . mapping _List1

-- | The AWS service or entity that holds the permission. At this time, the only valid principal is @acm.amazonaws.com@ .
pPrincipal :: Lens' Permission (Maybe Text)
pPrincipal = lens _pPrincipal (\s a -> s {_pPrincipal = a})

-- | The ID of the account that assigned the permission.
pSourceAccount :: Lens' Permission (Maybe Text)
pSourceAccount = lens _pSourceAccount (\s a -> s {_pSourceAccount = a})

-- | The name of the policy that is associated with the permission.
pPolicy :: Lens' Permission (Maybe Text)
pPolicy = lens _pPolicy (\s a -> s {_pPolicy = a})

instance FromJSON Permission where
  parseJSON =
    withObject
      "Permission"
      ( \x ->
          Permission'
            <$> (x .:? "CertificateAuthorityArn")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "Actions")
            <*> (x .:? "Principal")
            <*> (x .:? "SourceAccount")
            <*> (x .:? "Policy")
      )

instance Hashable Permission

instance NFData Permission
