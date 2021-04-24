{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ErrorDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ErrorDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about an error in AWS CodePipeline.
--
--
--
-- /See:/ 'errorDetails' smart constructor.
data ErrorDetails = ErrorDetails'
  { _edMessage ::
      !(Maybe Text),
    _edCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edMessage' - The text of the error message.
--
-- * 'edCode' - The system ID or number code of the error.
errorDetails ::
  ErrorDetails
errorDetails =
  ErrorDetails'
    { _edMessage = Nothing,
      _edCode = Nothing
    }

-- | The text of the error message.
edMessage :: Lens' ErrorDetails (Maybe Text)
edMessage = lens _edMessage (\s a -> s {_edMessage = a})

-- | The system ID or number code of the error.
edCode :: Lens' ErrorDetails (Maybe Text)
edCode = lens _edCode (\s a -> s {_edCode = a})

instance FromJSON ErrorDetails where
  parseJSON =
    withObject
      "ErrorDetails"
      ( \x ->
          ErrorDetails'
            <$> (x .:? "message") <*> (x .:? "code")
      )

instance Hashable ErrorDetails

instance NFData ErrorDetails
