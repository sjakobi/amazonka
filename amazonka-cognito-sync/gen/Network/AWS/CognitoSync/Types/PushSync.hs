{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.Types.PushSync
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.PushSync where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration options to be applied to the identity pool.
--
--
--
-- /See:/ 'pushSync' smart constructor.
data PushSync = PushSync'
  { _psRoleARN ::
      !(Maybe Text),
    _psApplicationARNs :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PushSync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psRoleARN' - A role configured to allow Cognito to call SNS on behalf of the developer.
--
-- * 'psApplicationARNs' - List of SNS platform application ARNs that could be used by clients.
pushSync ::
  PushSync
pushSync =
  PushSync'
    { _psRoleARN = Nothing,
      _psApplicationARNs = Nothing
    }

-- | A role configured to allow Cognito to call SNS on behalf of the developer.
psRoleARN :: Lens' PushSync (Maybe Text)
psRoleARN = lens _psRoleARN (\s a -> s {_psRoleARN = a})

-- | List of SNS platform application ARNs that could be used by clients.
psApplicationARNs :: Lens' PushSync [Text]
psApplicationARNs = lens _psApplicationARNs (\s a -> s {_psApplicationARNs = a}) . _Default . _Coerce

instance FromJSON PushSync where
  parseJSON =
    withObject
      "PushSync"
      ( \x ->
          PushSync'
            <$> (x .:? "RoleArn")
            <*> (x .:? "ApplicationArns" .!= mempty)
      )

instance Hashable PushSync

instance NFData PushSync

instance ToJSON PushSync where
  toJSON PushSync' {..} =
    object
      ( catMaybes
          [ ("RoleArn" .=) <$> _psRoleARN,
            ("ApplicationArns" .=) <$> _psApplicationARNs
          ]
      )
