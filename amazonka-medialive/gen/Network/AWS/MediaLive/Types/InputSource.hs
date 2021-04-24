{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSource where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The settings for a PULL type input.
--
-- /See:/ 'inputSource' smart constructor.
data InputSource = InputSource'
  { _isPasswordParam ::
      !(Maybe Text),
    _isUsername :: !(Maybe Text),
    _isURL :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isPasswordParam' - The key used to extract the password from EC2 Parameter store.
--
-- * 'isUsername' - The username for the input source.
--
-- * 'isURL' - This represents the customer's source URL where stream is pulled from.
inputSource ::
  InputSource
inputSource =
  InputSource'
    { _isPasswordParam = Nothing,
      _isUsername = Nothing,
      _isURL = Nothing
    }

-- | The key used to extract the password from EC2 Parameter store.
isPasswordParam :: Lens' InputSource (Maybe Text)
isPasswordParam = lens _isPasswordParam (\s a -> s {_isPasswordParam = a})

-- | The username for the input source.
isUsername :: Lens' InputSource (Maybe Text)
isUsername = lens _isUsername (\s a -> s {_isUsername = a})

-- | This represents the customer's source URL where stream is pulled from.
isURL :: Lens' InputSource (Maybe Text)
isURL = lens _isURL (\s a -> s {_isURL = a})

instance FromJSON InputSource where
  parseJSON =
    withObject
      "InputSource"
      ( \x ->
          InputSource'
            <$> (x .:? "passwordParam")
            <*> (x .:? "username")
            <*> (x .:? "url")
      )

instance Hashable InputSource

instance NFData InputSource
