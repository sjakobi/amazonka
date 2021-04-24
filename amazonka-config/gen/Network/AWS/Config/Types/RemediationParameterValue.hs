{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.RemediationParameterValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationParameterValue where

import Network.AWS.Config.Types.ResourceValue
import Network.AWS.Config.Types.StaticValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.
--
--
--
-- /See:/ 'remediationParameterValue' smart constructor.
data RemediationParameterValue = RemediationParameterValue'
  { _rpvResourceValue ::
      !( Maybe
           ResourceValue
       ),
    _rpvStaticValue ::
      !( Maybe
           StaticValue
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

-- | Creates a value of 'RemediationParameterValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvResourceValue' - The value is dynamic and changes at run-time.
--
-- * 'rpvStaticValue' - The value is static and does not change at run-time.
remediationParameterValue ::
  RemediationParameterValue
remediationParameterValue =
  RemediationParameterValue'
    { _rpvResourceValue =
        Nothing,
      _rpvStaticValue = Nothing
    }

-- | The value is dynamic and changes at run-time.
rpvResourceValue :: Lens' RemediationParameterValue (Maybe ResourceValue)
rpvResourceValue = lens _rpvResourceValue (\s a -> s {_rpvResourceValue = a})

-- | The value is static and does not change at run-time.
rpvStaticValue :: Lens' RemediationParameterValue (Maybe StaticValue)
rpvStaticValue = lens _rpvStaticValue (\s a -> s {_rpvStaticValue = a})

instance FromJSON RemediationParameterValue where
  parseJSON =
    withObject
      "RemediationParameterValue"
      ( \x ->
          RemediationParameterValue'
            <$> (x .:? "ResourceValue") <*> (x .:? "StaticValue")
      )

instance Hashable RemediationParameterValue

instance NFData RemediationParameterValue

instance ToJSON RemediationParameterValue where
  toJSON RemediationParameterValue' {..} =
    object
      ( catMaybes
          [ ("ResourceValue" .=) <$> _rpvResourceValue,
            ("StaticValue" .=) <$> _rpvStaticValue
          ]
      )
