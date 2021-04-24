{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters where

import Network.AWS.CloudWatchEvents.Types.ConnectionBodyParameter
import Network.AWS.CloudWatchEvents.Types.ConnectionHeaderParameter
import Network.AWS.CloudWatchEvents.Types.ConnectionQueryStringParameter
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains additional parameters for the connection.
--
--
--
-- /See:/ 'connectionHTTPParameters' smart constructor.
data ConnectionHTTPParameters = ConnectionHTTPParameters'
  { _chttppQueryStringParameters ::
      !( Maybe
           [ConnectionQueryStringParameter]
       ),
    _chttppHeaderParameters ::
      !( Maybe
           [ConnectionHeaderParameter]
       ),
    _chttppBodyParameters ::
      !( Maybe
           [ConnectionBodyParameter]
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

-- | Creates a value of 'ConnectionHTTPParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chttppQueryStringParameters' - Contains additional query string parameters for the connection.
--
-- * 'chttppHeaderParameters' - Contains additional header parameters for the connection.
--
-- * 'chttppBodyParameters' - Contains additional body string parameters for the connection.
connectionHTTPParameters ::
  ConnectionHTTPParameters
connectionHTTPParameters =
  ConnectionHTTPParameters'
    { _chttppQueryStringParameters =
        Nothing,
      _chttppHeaderParameters = Nothing,
      _chttppBodyParameters = Nothing
    }

-- | Contains additional query string parameters for the connection.
chttppQueryStringParameters :: Lens' ConnectionHTTPParameters [ConnectionQueryStringParameter]
chttppQueryStringParameters = lens _chttppQueryStringParameters (\s a -> s {_chttppQueryStringParameters = a}) . _Default . _Coerce

-- | Contains additional header parameters for the connection.
chttppHeaderParameters :: Lens' ConnectionHTTPParameters [ConnectionHeaderParameter]
chttppHeaderParameters = lens _chttppHeaderParameters (\s a -> s {_chttppHeaderParameters = a}) . _Default . _Coerce

-- | Contains additional body string parameters for the connection.
chttppBodyParameters :: Lens' ConnectionHTTPParameters [ConnectionBodyParameter]
chttppBodyParameters = lens _chttppBodyParameters (\s a -> s {_chttppBodyParameters = a}) . _Default . _Coerce

instance FromJSON ConnectionHTTPParameters where
  parseJSON =
    withObject
      "ConnectionHTTPParameters"
      ( \x ->
          ConnectionHTTPParameters'
            <$> (x .:? "QueryStringParameters" .!= mempty)
            <*> (x .:? "HeaderParameters" .!= mempty)
            <*> (x .:? "BodyParameters" .!= mempty)
      )

instance Hashable ConnectionHTTPParameters

instance NFData ConnectionHTTPParameters

instance ToJSON ConnectionHTTPParameters where
  toJSON ConnectionHTTPParameters' {..} =
    object
      ( catMaybes
          [ ("QueryStringParameters" .=)
              <$> _chttppQueryStringParameters,
            ("HeaderParameters" .=) <$> _chttppHeaderParameters,
            ("BodyParameters" .=) <$> _chttppBodyParameters
          ]
      )
