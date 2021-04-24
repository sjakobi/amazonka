{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ConditionStepMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ConditionStepMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ConditionOutcome

-- | Metadata for a Condition step.
--
--
--
-- /See:/ 'conditionStepMetadata' smart constructor.
newtype ConditionStepMetadata = ConditionStepMetadata'
  { _csmOutcome ::
      Maybe ConditionOutcome
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConditionStepMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csmOutcome' - The outcome of the Condition step evaluation.
conditionStepMetadata ::
  ConditionStepMetadata
conditionStepMetadata =
  ConditionStepMetadata' {_csmOutcome = Nothing}

-- | The outcome of the Condition step evaluation.
csmOutcome :: Lens' ConditionStepMetadata (Maybe ConditionOutcome)
csmOutcome = lens _csmOutcome (\s a -> s {_csmOutcome = a})

instance FromJSON ConditionStepMetadata where
  parseJSON =
    withObject
      "ConditionStepMetadata"
      (\x -> ConditionStepMetadata' <$> (x .:? "Outcome"))

instance Hashable ConditionStepMetadata

instance NFData ConditionStepMetadata
