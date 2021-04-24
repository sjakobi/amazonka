{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.ExportTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.ExportTaskStatus where

import Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the status of an export task.
--
--
--
-- /See:/ 'exportTaskStatus' smart constructor.
data ExportTaskStatus = ExportTaskStatus'
  { _etsMessage ::
      !(Maybe Text),
    _etsCode ::
      !(Maybe ExportTaskStatusCode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportTaskStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etsMessage' - The status message related to the status code.
--
-- * 'etsCode' - The status code of the export task.
exportTaskStatus ::
  ExportTaskStatus
exportTaskStatus =
  ExportTaskStatus'
    { _etsMessage = Nothing,
      _etsCode = Nothing
    }

-- | The status message related to the status code.
etsMessage :: Lens' ExportTaskStatus (Maybe Text)
etsMessage = lens _etsMessage (\s a -> s {_etsMessage = a})

-- | The status code of the export task.
etsCode :: Lens' ExportTaskStatus (Maybe ExportTaskStatusCode)
etsCode = lens _etsCode (\s a -> s {_etsCode = a})

instance FromJSON ExportTaskStatus where
  parseJSON =
    withObject
      "ExportTaskStatus"
      ( \x ->
          ExportTaskStatus'
            <$> (x .:? "message") <*> (x .:? "code")
      )

instance Hashable ExportTaskStatus

instance NFData ExportTaskStatus
