{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServerlessApplicationRepository.Types.RollbackConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServerlessApplicationRepository.Types.RollbackConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServerlessApplicationRepository.Types.RollbackTrigger

-- | This property corresponds to the /AWS CloudFormation <https:\/\/docs.aws.amazon.com\/goto\/WebAPI\/cloudformation-2010-05-15\/RollbackConfiguration RollbackConfiguration> / Data Type.
--
--
--
-- /See:/ 'rollbackConfiguration' smart constructor.
data RollbackConfiguration = RollbackConfiguration'
  { _rcMonitoringTimeInMinutes ::
      !(Maybe Int),
    _rcRollbackTriggers ::
      !(Maybe [RollbackTrigger])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RollbackConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcMonitoringTimeInMinutes' - This property corresponds to the content of the same name for the /AWS CloudFormation <https:\/\/docs.aws.amazon.com\/goto\/WebAPI\/cloudformation-2010-05-15\/RollbackConfiguration RollbackConfiguration> / Data Type.
--
-- * 'rcRollbackTriggers' - This property corresponds to the content of the same name for the /AWS CloudFormation <https:\/\/docs.aws.amazon.com\/goto\/WebAPI\/cloudformation-2010-05-15\/RollbackConfiguration RollbackConfiguration> / Data Type.
rollbackConfiguration ::
  RollbackConfiguration
rollbackConfiguration =
  RollbackConfiguration'
    { _rcMonitoringTimeInMinutes =
        Nothing,
      _rcRollbackTriggers = Nothing
    }

-- | This property corresponds to the content of the same name for the /AWS CloudFormation <https:\/\/docs.aws.amazon.com\/goto\/WebAPI\/cloudformation-2010-05-15\/RollbackConfiguration RollbackConfiguration> / Data Type.
rcMonitoringTimeInMinutes :: Lens' RollbackConfiguration (Maybe Int)
rcMonitoringTimeInMinutes = lens _rcMonitoringTimeInMinutes (\s a -> s {_rcMonitoringTimeInMinutes = a})

-- | This property corresponds to the content of the same name for the /AWS CloudFormation <https:\/\/docs.aws.amazon.com\/goto\/WebAPI\/cloudformation-2010-05-15\/RollbackConfiguration RollbackConfiguration> / Data Type.
rcRollbackTriggers :: Lens' RollbackConfiguration [RollbackTrigger]
rcRollbackTriggers = lens _rcRollbackTriggers (\s a -> s {_rcRollbackTriggers = a}) . _Default . _Coerce

instance Hashable RollbackConfiguration

instance NFData RollbackConfiguration

instance ToJSON RollbackConfiguration where
  toJSON RollbackConfiguration' {..} =
    object
      ( catMaybes
          [ ("monitoringTimeInMinutes" .=)
              <$> _rcMonitoringTimeInMinutes,
            ("rollbackTriggers" .=) <$> _rcRollbackTriggers
          ]
      )
