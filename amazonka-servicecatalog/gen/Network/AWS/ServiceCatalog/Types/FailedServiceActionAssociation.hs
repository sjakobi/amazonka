{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.FailedServiceActionAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.FailedServiceActionAssociation where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.ServiceActionAssociationErrorCode

-- | An object containing information about the error, along with identifying information about the self-service action and its associations.
--
--
--
-- /See:/ 'failedServiceActionAssociation' smart constructor.
data FailedServiceActionAssociation = FailedServiceActionAssociation'
  { _fsaaProvisioningArtifactId ::
      !( Maybe
           Text
       ),
    _fsaaServiceActionId ::
      !( Maybe
           Text
       ),
    _fsaaProductId ::
      !( Maybe
           Text
       ),
    _fsaaErrorMessage ::
      !( Maybe
           Text
       ),
    _fsaaErrorCode ::
      !( Maybe
           ServiceActionAssociationErrorCode
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FailedServiceActionAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsaaProvisioningArtifactId' - The identifier of the provisioning artifact. For example, @pa-4abcdjnxjj6ne@ .
--
-- * 'fsaaServiceActionId' - The self-service action identifier. For example, @act-fs7abcd89wxyz@ .
--
-- * 'fsaaProductId' - The product identifier. For example, @prod-abcdzk7xy33qa@ .
--
-- * 'fsaaErrorMessage' - A text description of the error.
--
-- * 'fsaaErrorCode' - The error code. Valid values are listed below.
failedServiceActionAssociation ::
  FailedServiceActionAssociation
failedServiceActionAssociation =
  FailedServiceActionAssociation'
    { _fsaaProvisioningArtifactId =
        Nothing,
      _fsaaServiceActionId = Nothing,
      _fsaaProductId = Nothing,
      _fsaaErrorMessage = Nothing,
      _fsaaErrorCode = Nothing
    }

-- | The identifier of the provisioning artifact. For example, @pa-4abcdjnxjj6ne@ .
fsaaProvisioningArtifactId :: Lens' FailedServiceActionAssociation (Maybe Text)
fsaaProvisioningArtifactId = lens _fsaaProvisioningArtifactId (\s a -> s {_fsaaProvisioningArtifactId = a})

-- | The self-service action identifier. For example, @act-fs7abcd89wxyz@ .
fsaaServiceActionId :: Lens' FailedServiceActionAssociation (Maybe Text)
fsaaServiceActionId = lens _fsaaServiceActionId (\s a -> s {_fsaaServiceActionId = a})

-- | The product identifier. For example, @prod-abcdzk7xy33qa@ .
fsaaProductId :: Lens' FailedServiceActionAssociation (Maybe Text)
fsaaProductId = lens _fsaaProductId (\s a -> s {_fsaaProductId = a})

-- | A text description of the error.
fsaaErrorMessage :: Lens' FailedServiceActionAssociation (Maybe Text)
fsaaErrorMessage = lens _fsaaErrorMessage (\s a -> s {_fsaaErrorMessage = a})

-- | The error code. Valid values are listed below.
fsaaErrorCode :: Lens' FailedServiceActionAssociation (Maybe ServiceActionAssociationErrorCode)
fsaaErrorCode = lens _fsaaErrorCode (\s a -> s {_fsaaErrorCode = a})

instance FromJSON FailedServiceActionAssociation where
  parseJSON =
    withObject
      "FailedServiceActionAssociation"
      ( \x ->
          FailedServiceActionAssociation'
            <$> (x .:? "ProvisioningArtifactId")
            <*> (x .:? "ServiceActionId")
            <*> (x .:? "ProductId")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "ErrorCode")
      )

instance Hashable FailedServiceActionAssociation

instance NFData FailedServiceActionAssociation
