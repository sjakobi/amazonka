{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ResourceError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ResourceError where

import Network.AWS.AppStream.Types.FleetErrorCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a resource error.
--
--
--
-- /See:/ 'resourceError' smart constructor.
data ResourceError = ResourceError'
  { _reErrorTimestamp ::
      !(Maybe POSIX),
    _reErrorMessage :: !(Maybe Text),
    _reErrorCode :: !(Maybe FleetErrorCode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reErrorTimestamp' - The time the error occurred.
--
-- * 'reErrorMessage' - The error message.
--
-- * 'reErrorCode' - The error code.
resourceError ::
  ResourceError
resourceError =
  ResourceError'
    { _reErrorTimestamp = Nothing,
      _reErrorMessage = Nothing,
      _reErrorCode = Nothing
    }

-- | The time the error occurred.
reErrorTimestamp :: Lens' ResourceError (Maybe UTCTime)
reErrorTimestamp = lens _reErrorTimestamp (\s a -> s {_reErrorTimestamp = a}) . mapping _Time

-- | The error message.
reErrorMessage :: Lens' ResourceError (Maybe Text)
reErrorMessage = lens _reErrorMessage (\s a -> s {_reErrorMessage = a})

-- | The error code.
reErrorCode :: Lens' ResourceError (Maybe FleetErrorCode)
reErrorCode = lens _reErrorCode (\s a -> s {_reErrorCode = a})

instance FromJSON ResourceError where
  parseJSON =
    withObject
      "ResourceError"
      ( \x ->
          ResourceError'
            <$> (x .:? "ErrorTimestamp")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "ErrorCode")
      )

instance Hashable ResourceError

instance NFData ResourceError
