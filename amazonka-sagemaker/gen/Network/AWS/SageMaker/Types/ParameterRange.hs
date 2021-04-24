{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ParameterRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ParameterRange where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.CategoricalParameterRangeSpecification
import Network.AWS.SageMaker.Types.ContinuousParameterRangeSpecification
import Network.AWS.SageMaker.Types.IntegerParameterRangeSpecification

-- | Defines the possible values for categorical, continuous, and integer hyperparameters to be used by an algorithm.
--
--
--
-- /See:/ 'parameterRange' smart constructor.
data ParameterRange = ParameterRange'
  { _prContinuousParameterRangeSpecification ::
      !( Maybe
           ContinuousParameterRangeSpecification
       ),
    _prIntegerParameterRangeSpecification ::
      !( Maybe
           IntegerParameterRangeSpecification
       ),
    _prCategoricalParameterRangeSpecification ::
      !( Maybe
           CategoricalParameterRangeSpecification
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParameterRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prContinuousParameterRangeSpecification' - A @ContinuousParameterRangeSpecification@ object that defines the possible values for a continuous hyperparameter.
--
-- * 'prIntegerParameterRangeSpecification' - A @IntegerParameterRangeSpecification@ object that defines the possible values for an integer hyperparameter.
--
-- * 'prCategoricalParameterRangeSpecification' - A @CategoricalParameterRangeSpecification@ object that defines the possible values for a categorical hyperparameter.
parameterRange ::
  ParameterRange
parameterRange =
  ParameterRange'
    { _prContinuousParameterRangeSpecification =
        Nothing,
      _prIntegerParameterRangeSpecification = Nothing,
      _prCategoricalParameterRangeSpecification = Nothing
    }

-- | A @ContinuousParameterRangeSpecification@ object that defines the possible values for a continuous hyperparameter.
prContinuousParameterRangeSpecification :: Lens' ParameterRange (Maybe ContinuousParameterRangeSpecification)
prContinuousParameterRangeSpecification = lens _prContinuousParameterRangeSpecification (\s a -> s {_prContinuousParameterRangeSpecification = a})

-- | A @IntegerParameterRangeSpecification@ object that defines the possible values for an integer hyperparameter.
prIntegerParameterRangeSpecification :: Lens' ParameterRange (Maybe IntegerParameterRangeSpecification)
prIntegerParameterRangeSpecification = lens _prIntegerParameterRangeSpecification (\s a -> s {_prIntegerParameterRangeSpecification = a})

-- | A @CategoricalParameterRangeSpecification@ object that defines the possible values for a categorical hyperparameter.
prCategoricalParameterRangeSpecification :: Lens' ParameterRange (Maybe CategoricalParameterRangeSpecification)
prCategoricalParameterRangeSpecification = lens _prCategoricalParameterRangeSpecification (\s a -> s {_prCategoricalParameterRangeSpecification = a})

instance FromJSON ParameterRange where
  parseJSON =
    withObject
      "ParameterRange"
      ( \x ->
          ParameterRange'
            <$> (x .:? "ContinuousParameterRangeSpecification")
            <*> (x .:? "IntegerParameterRangeSpecification")
            <*> (x .:? "CategoricalParameterRangeSpecification")
      )

instance Hashable ParameterRange

instance NFData ParameterRange

instance ToJSON ParameterRange where
  toJSON ParameterRange' {..} =
    object
      ( catMaybes
          [ ("ContinuousParameterRangeSpecification" .=)
              <$> _prContinuousParameterRangeSpecification,
            ("IntegerParameterRangeSpecification" .=)
              <$> _prIntegerParameterRangeSpecification,
            ("CategoricalParameterRangeSpecification" .=)
              <$> _prCategoricalParameterRangeSpecification
          ]
      )
