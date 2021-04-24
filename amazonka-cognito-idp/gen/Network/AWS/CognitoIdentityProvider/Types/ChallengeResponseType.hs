{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.ChallengeResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.ChallengeResponseType where

import Network.AWS.CognitoIdentityProvider.Types.ChallengeName
import Network.AWS.CognitoIdentityProvider.Types.ChallengeResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The challenge response type.
--
--
--
-- /See:/ 'challengeResponseType' smart constructor.
data ChallengeResponseType = ChallengeResponseType'
  { _crtChallengeResponse ::
      !(Maybe ChallengeResponse),
    _crtChallengeName ::
      !(Maybe ChallengeName)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ChallengeResponseType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crtChallengeResponse' - The challenge response.
--
-- * 'crtChallengeName' - The challenge name
challengeResponseType ::
  ChallengeResponseType
challengeResponseType =
  ChallengeResponseType'
    { _crtChallengeResponse =
        Nothing,
      _crtChallengeName = Nothing
    }

-- | The challenge response.
crtChallengeResponse :: Lens' ChallengeResponseType (Maybe ChallengeResponse)
crtChallengeResponse = lens _crtChallengeResponse (\s a -> s {_crtChallengeResponse = a})

-- | The challenge name
crtChallengeName :: Lens' ChallengeResponseType (Maybe ChallengeName)
crtChallengeName = lens _crtChallengeName (\s a -> s {_crtChallengeName = a})

instance FromJSON ChallengeResponseType where
  parseJSON =
    withObject
      "ChallengeResponseType"
      ( \x ->
          ChallengeResponseType'
            <$> (x .:? "ChallengeResponse")
            <*> (x .:? "ChallengeName")
      )

instance Hashable ChallengeResponseType

instance NFData ChallengeResponseType
