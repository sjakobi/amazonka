{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.LastReportGenerationExecutionError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.LastReportGenerationExecutionError where

import Network.AWS.AppStream.Types.UsageReportExecutionErrorCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the error that is returned when a usage report can't be generated.
--
--
--
-- /See:/ 'lastReportGenerationExecutionError' smart constructor.
data LastReportGenerationExecutionError = LastReportGenerationExecutionError'
  { _lrgeeErrorMessage ::
      !( Maybe
           Text
       ),
    _lrgeeErrorCode ::
      !( Maybe
           UsageReportExecutionErrorCode
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

-- | Creates a value of 'LastReportGenerationExecutionError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrgeeErrorMessage' - The error message for the error that is returned when a usage report can't be generated.
--
-- * 'lrgeeErrorCode' - The error code for the error that is returned when a usage report can't be generated.
lastReportGenerationExecutionError ::
  LastReportGenerationExecutionError
lastReportGenerationExecutionError =
  LastReportGenerationExecutionError'
    { _lrgeeErrorMessage =
        Nothing,
      _lrgeeErrorCode = Nothing
    }

-- | The error message for the error that is returned when a usage report can't be generated.
lrgeeErrorMessage :: Lens' LastReportGenerationExecutionError (Maybe Text)
lrgeeErrorMessage = lens _lrgeeErrorMessage (\s a -> s {_lrgeeErrorMessage = a})

-- | The error code for the error that is returned when a usage report can't be generated.
lrgeeErrorCode :: Lens' LastReportGenerationExecutionError (Maybe UsageReportExecutionErrorCode)
lrgeeErrorCode = lens _lrgeeErrorCode (\s a -> s {_lrgeeErrorCode = a})

instance FromJSON LastReportGenerationExecutionError where
  parseJSON =
    withObject
      "LastReportGenerationExecutionError"
      ( \x ->
          LastReportGenerationExecutionError'
            <$> (x .:? "ErrorMessage") <*> (x .:? "ErrorCode")
      )

instance Hashable LastReportGenerationExecutionError

instance NFData LastReportGenerationExecutionError
