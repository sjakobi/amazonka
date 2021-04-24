{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrialComponentParameterValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialComponentParameterValue where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The value of a hyperparameter. Only one of @NumberValue@ or @StringValue@ can be specified.
--
--
-- This object is specified in the 'CreateTrialComponent' request.
--
--
-- /See:/ 'trialComponentParameterValue' smart constructor.
data TrialComponentParameterValue = TrialComponentParameterValue'
  { _tcpvStringValue ::
      !(Maybe Text),
    _tcpvNumberValue ::
      !( Maybe
           Double
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

-- | Creates a value of 'TrialComponentParameterValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcpvStringValue' - The string value of a categorical hyperparameter. If you specify a value for this parameter, you can't specify the @NumberValue@ parameter.
--
-- * 'tcpvNumberValue' - The numeric value of a numeric hyperparameter. If you specify a value for this parameter, you can't specify the @StringValue@ parameter.
trialComponentParameterValue ::
  TrialComponentParameterValue
trialComponentParameterValue =
  TrialComponentParameterValue'
    { _tcpvStringValue =
        Nothing,
      _tcpvNumberValue = Nothing
    }

-- | The string value of a categorical hyperparameter. If you specify a value for this parameter, you can't specify the @NumberValue@ parameter.
tcpvStringValue :: Lens' TrialComponentParameterValue (Maybe Text)
tcpvStringValue = lens _tcpvStringValue (\s a -> s {_tcpvStringValue = a})

-- | The numeric value of a numeric hyperparameter. If you specify a value for this parameter, you can't specify the @StringValue@ parameter.
tcpvNumberValue :: Lens' TrialComponentParameterValue (Maybe Double)
tcpvNumberValue = lens _tcpvNumberValue (\s a -> s {_tcpvNumberValue = a})

instance FromJSON TrialComponentParameterValue where
  parseJSON =
    withObject
      "TrialComponentParameterValue"
      ( \x ->
          TrialComponentParameterValue'
            <$> (x .:? "StringValue") <*> (x .:? "NumberValue")
      )

instance Hashable TrialComponentParameterValue

instance NFData TrialComponentParameterValue

instance ToJSON TrialComponentParameterValue where
  toJSON TrialComponentParameterValue' {..} =
    object
      ( catMaybes
          [ ("StringValue" .=) <$> _tcpvStringValue,
            ("NumberValue" .=) <$> _tcpvNumberValue
          ]
      )
