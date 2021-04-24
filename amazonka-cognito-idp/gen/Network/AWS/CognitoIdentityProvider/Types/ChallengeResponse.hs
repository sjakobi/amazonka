{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.ChallengeResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.ChallengeResponse
  ( ChallengeResponse
      ( ..,
        Failure,
        Success
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChallengeResponse = ChallengeResponse' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failure :: ChallengeResponse
pattern Failure = ChallengeResponse' "Failure"

pattern Success :: ChallengeResponse
pattern Success = ChallengeResponse' "Success"

{-# COMPLETE
  Failure,
  Success,
  ChallengeResponse'
  #-}

instance FromText ChallengeResponse where
  parser = (ChallengeResponse' . mk) <$> takeText

instance ToText ChallengeResponse where
  toText (ChallengeResponse' ci) = original ci

instance Hashable ChallengeResponse

instance NFData ChallengeResponse

instance ToByteString ChallengeResponse

instance ToQuery ChallengeResponse

instance ToHeader ChallengeResponse

instance FromJSON ChallengeResponse where
  parseJSON = parseJSONText "ChallengeResponse"
