{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowAutomationParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MaintenanceWindowAutomationParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The parameters for an AUTOMATION task type.
--
--
--
-- /See:/ 'maintenanceWindowAutomationParameters' smart constructor.
data MaintenanceWindowAutomationParameters = MaintenanceWindowAutomationParameters'
  { _mwapDocumentVersion ::
      !( Maybe
           Text
       ),
    _mwapParameters ::
      !( Maybe
           ( Map
               Text
               [Text]
           )
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

-- | Creates a value of 'MaintenanceWindowAutomationParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwapDocumentVersion' - The version of an Automation document to use during task execution.
--
-- * 'mwapParameters' - The parameters for the AUTOMATION task. For information about specifying and updating task parameters, see 'RegisterTaskWithMaintenanceWindow' and 'UpdateMaintenanceWindowTask' .
maintenanceWindowAutomationParameters ::
  MaintenanceWindowAutomationParameters
maintenanceWindowAutomationParameters =
  MaintenanceWindowAutomationParameters'
    { _mwapDocumentVersion =
        Nothing,
      _mwapParameters = Nothing
    }

-- | The version of an Automation document to use during task execution.
mwapDocumentVersion :: Lens' MaintenanceWindowAutomationParameters (Maybe Text)
mwapDocumentVersion = lens _mwapDocumentVersion (\s a -> s {_mwapDocumentVersion = a})

-- | The parameters for the AUTOMATION task. For information about specifying and updating task parameters, see 'RegisterTaskWithMaintenanceWindow' and 'UpdateMaintenanceWindowTask' .
mwapParameters :: Lens' MaintenanceWindowAutomationParameters (HashMap Text [Text])
mwapParameters = lens _mwapParameters (\s a -> s {_mwapParameters = a}) . _Default . _Map

instance
  FromJSON
    MaintenanceWindowAutomationParameters
  where
  parseJSON =
    withObject
      "MaintenanceWindowAutomationParameters"
      ( \x ->
          MaintenanceWindowAutomationParameters'
            <$> (x .:? "DocumentVersion")
            <*> (x .:? "Parameters" .!= mempty)
      )

instance
  Hashable
    MaintenanceWindowAutomationParameters

instance NFData MaintenanceWindowAutomationParameters

instance ToJSON MaintenanceWindowAutomationParameters where
  toJSON MaintenanceWindowAutomationParameters' {..} =
    object
      ( catMaybes
          [ ("DocumentVersion" .=) <$> _mwapDocumentVersion,
            ("Parameters" .=) <$> _mwapParameters
          ]
      )
