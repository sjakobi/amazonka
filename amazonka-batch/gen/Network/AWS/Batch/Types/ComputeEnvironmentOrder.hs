{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ComputeEnvironmentOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.ComputeEnvironmentOrder where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The order in which compute environments are tried for job placement within a queue. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first. Compute environments must be in the @VALID@ state before you can associate them with a job queue. All of the compute environments must be either EC2 (@EC2@ or @SPOT@ ) or Fargate (@FARGATE@ or @FARGATE_SPOT@ ); EC2 and Fargate compute environments can't be mixed.
--
--
--
-- /See:/ 'computeEnvironmentOrder' smart constructor.
data ComputeEnvironmentOrder = ComputeEnvironmentOrder'
  { _ceoOrder ::
      !Int,
    _ceoComputeEnvironment ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ComputeEnvironmentOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceoOrder' - The order of the compute environment. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower @order@ integer value is tried for job placement first.
--
-- * 'ceoComputeEnvironment' - The Amazon Resource Name (ARN) of the compute environment.
computeEnvironmentOrder ::
  -- | 'ceoOrder'
  Int ->
  -- | 'ceoComputeEnvironment'
  Text ->
  ComputeEnvironmentOrder
computeEnvironmentOrder pOrder_ pComputeEnvironment_ =
  ComputeEnvironmentOrder'
    { _ceoOrder = pOrder_,
      _ceoComputeEnvironment = pComputeEnvironment_
    }

-- | The order of the compute environment. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower @order@ integer value is tried for job placement first.
ceoOrder :: Lens' ComputeEnvironmentOrder Int
ceoOrder = lens _ceoOrder (\s a -> s {_ceoOrder = a})

-- | The Amazon Resource Name (ARN) of the compute environment.
ceoComputeEnvironment :: Lens' ComputeEnvironmentOrder Text
ceoComputeEnvironment = lens _ceoComputeEnvironment (\s a -> s {_ceoComputeEnvironment = a})

instance FromJSON ComputeEnvironmentOrder where
  parseJSON =
    withObject
      "ComputeEnvironmentOrder"
      ( \x ->
          ComputeEnvironmentOrder'
            <$> (x .: "order") <*> (x .: "computeEnvironment")
      )

instance Hashable ComputeEnvironmentOrder

instance NFData ComputeEnvironmentOrder

instance ToJSON ComputeEnvironmentOrder where
  toJSON ComputeEnvironmentOrder' {..} =
    object
      ( catMaybes
          [ Just ("order" .= _ceoOrder),
            Just
              ("computeEnvironment" .= _ceoComputeEnvironment)
          ]
      )
