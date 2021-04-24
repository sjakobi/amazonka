{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProvisioningParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProvisioningParameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A key value pair used when you provision a project as a service catalog product. For information, see <https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html What is AWS Service Catalog> .
--
--
--
-- /See:/ 'provisioningParameter' smart constructor.
data ProvisioningParameter = ProvisioningParameter'
  { _ppKey ::
      !(Maybe Text),
    _ppValue :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProvisioningParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppKey' - The key that identifies a provisioning parameter.
--
-- * 'ppValue' - The value of the provisioning parameter.
provisioningParameter ::
  ProvisioningParameter
provisioningParameter =
  ProvisioningParameter'
    { _ppKey = Nothing,
      _ppValue = Nothing
    }

-- | The key that identifies a provisioning parameter.
ppKey :: Lens' ProvisioningParameter (Maybe Text)
ppKey = lens _ppKey (\s a -> s {_ppKey = a})

-- | The value of the provisioning parameter.
ppValue :: Lens' ProvisioningParameter (Maybe Text)
ppValue = lens _ppValue (\s a -> s {_ppValue = a})

instance FromJSON ProvisioningParameter where
  parseJSON =
    withObject
      "ProvisioningParameter"
      ( \x ->
          ProvisioningParameter'
            <$> (x .:? "Key") <*> (x .:? "Value")
      )

instance Hashable ProvisioningParameter

instance NFData ProvisioningParameter

instance ToJSON ProvisioningParameter where
  toJSON ProvisioningParameter' {..} =
    object
      ( catMaybes
          [("Key" .=) <$> _ppKey, ("Value" .=) <$> _ppValue]
      )
