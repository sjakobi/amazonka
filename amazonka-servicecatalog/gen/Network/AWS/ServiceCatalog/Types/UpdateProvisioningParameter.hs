{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.UpdateProvisioningParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.UpdateProvisioningParameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The parameter key-value pair used to update a provisioned product.
--
--
--
-- /See:/ 'updateProvisioningParameter' smart constructor.
data UpdateProvisioningParameter = UpdateProvisioningParameter'
  { _uppKey ::
      !(Maybe Text),
    _uppUsePreviousValue ::
      !(Maybe Bool),
    _uppValue ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateProvisioningParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uppKey' - The parameter key.
--
-- * 'uppUsePreviousValue' - If set to true, @Value@ is ignored and the previous parameter value is kept.
--
-- * 'uppValue' - The parameter value.
updateProvisioningParameter ::
  UpdateProvisioningParameter
updateProvisioningParameter =
  UpdateProvisioningParameter'
    { _uppKey = Nothing,
      _uppUsePreviousValue = Nothing,
      _uppValue = Nothing
    }

-- | The parameter key.
uppKey :: Lens' UpdateProvisioningParameter (Maybe Text)
uppKey = lens _uppKey (\s a -> s {_uppKey = a})

-- | If set to true, @Value@ is ignored and the previous parameter value is kept.
uppUsePreviousValue :: Lens' UpdateProvisioningParameter (Maybe Bool)
uppUsePreviousValue = lens _uppUsePreviousValue (\s a -> s {_uppUsePreviousValue = a})

-- | The parameter value.
uppValue :: Lens' UpdateProvisioningParameter (Maybe Text)
uppValue = lens _uppValue (\s a -> s {_uppValue = a})

instance FromJSON UpdateProvisioningParameter where
  parseJSON =
    withObject
      "UpdateProvisioningParameter"
      ( \x ->
          UpdateProvisioningParameter'
            <$> (x .:? "Key")
            <*> (x .:? "UsePreviousValue")
            <*> (x .:? "Value")
      )

instance Hashable UpdateProvisioningParameter

instance NFData UpdateProvisioningParameter

instance ToJSON UpdateProvisioningParameter where
  toJSON UpdateProvisioningParameter' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _uppKey,
            ("UsePreviousValue" .=) <$> _uppUsePreviousValue,
            ("Value" .=) <$> _uppValue
          ]
      )
