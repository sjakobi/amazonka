{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.HyperParameterSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ParameterRange
import Network.AWS.SageMaker.Types.ParameterType

-- | Defines a hyperparameter to be used by an algorithm.
--
--
--
-- /See:/ 'hyperParameterSpecification' smart constructor.
data HyperParameterSpecification = HyperParameterSpecification'
  { _hpsRange ::
      !( Maybe
           ParameterRange
       ),
    _hpsIsTunable ::
      !(Maybe Bool),
    _hpsDescription ::
      !(Maybe Text),
    _hpsIsRequired ::
      !(Maybe Bool),
    _hpsDefaultValue ::
      !(Maybe Text),
    _hpsName ::
      !Text,
    _hpsType ::
      !ParameterType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'HyperParameterSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hpsRange' - The allowed range for this hyperparameter.
--
-- * 'hpsIsTunable' - Indicates whether this hyperparameter is tunable in a hyperparameter tuning job.
--
-- * 'hpsDescription' - A brief description of the hyperparameter.
--
-- * 'hpsIsRequired' - Indicates whether this hyperparameter is required.
--
-- * 'hpsDefaultValue' - The default value for this hyperparameter. If a default value is specified, a hyperparameter cannot be required.
--
-- * 'hpsName' - The name of this hyperparameter. The name must be unique.
--
-- * 'hpsType' - The type of this hyperparameter. The valid types are @Integer@ , @Continuous@ , @Categorical@ , and @FreeText@ .
hyperParameterSpecification ::
  -- | 'hpsName'
  Text ->
  -- | 'hpsType'
  ParameterType ->
  HyperParameterSpecification
hyperParameterSpecification pName_ pType_ =
  HyperParameterSpecification'
    { _hpsRange = Nothing,
      _hpsIsTunable = Nothing,
      _hpsDescription = Nothing,
      _hpsIsRequired = Nothing,
      _hpsDefaultValue = Nothing,
      _hpsName = pName_,
      _hpsType = pType_
    }

-- | The allowed range for this hyperparameter.
hpsRange :: Lens' HyperParameterSpecification (Maybe ParameterRange)
hpsRange = lens _hpsRange (\s a -> s {_hpsRange = a})

-- | Indicates whether this hyperparameter is tunable in a hyperparameter tuning job.
hpsIsTunable :: Lens' HyperParameterSpecification (Maybe Bool)
hpsIsTunable = lens _hpsIsTunable (\s a -> s {_hpsIsTunable = a})

-- | A brief description of the hyperparameter.
hpsDescription :: Lens' HyperParameterSpecification (Maybe Text)
hpsDescription = lens _hpsDescription (\s a -> s {_hpsDescription = a})

-- | Indicates whether this hyperparameter is required.
hpsIsRequired :: Lens' HyperParameterSpecification (Maybe Bool)
hpsIsRequired = lens _hpsIsRequired (\s a -> s {_hpsIsRequired = a})

-- | The default value for this hyperparameter. If a default value is specified, a hyperparameter cannot be required.
hpsDefaultValue :: Lens' HyperParameterSpecification (Maybe Text)
hpsDefaultValue = lens _hpsDefaultValue (\s a -> s {_hpsDefaultValue = a})

-- | The name of this hyperparameter. The name must be unique.
hpsName :: Lens' HyperParameterSpecification Text
hpsName = lens _hpsName (\s a -> s {_hpsName = a})

-- | The type of this hyperparameter. The valid types are @Integer@ , @Continuous@ , @Categorical@ , and @FreeText@ .
hpsType :: Lens' HyperParameterSpecification ParameterType
hpsType = lens _hpsType (\s a -> s {_hpsType = a})

instance FromJSON HyperParameterSpecification where
  parseJSON =
    withObject
      "HyperParameterSpecification"
      ( \x ->
          HyperParameterSpecification'
            <$> (x .:? "Range")
            <*> (x .:? "IsTunable")
            <*> (x .:? "Description")
            <*> (x .:? "IsRequired")
            <*> (x .:? "DefaultValue")
            <*> (x .: "Name")
            <*> (x .: "Type")
      )

instance Hashable HyperParameterSpecification

instance NFData HyperParameterSpecification

instance ToJSON HyperParameterSpecification where
  toJSON HyperParameterSpecification' {..} =
    object
      ( catMaybes
          [ ("Range" .=) <$> _hpsRange,
            ("IsTunable" .=) <$> _hpsIsTunable,
            ("Description" .=) <$> _hpsDescription,
            ("IsRequired" .=) <$> _hpsIsRequired,
            ("DefaultValue" .=) <$> _hpsDefaultValue,
            Just ("Name" .= _hpsName),
            Just ("Type" .= _hpsType)
          ]
      )
