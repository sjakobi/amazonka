{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ChallengeResponseFailure,
        ChallengeResponseSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChallengeResponse = ChallengeResponse'
  { fromChallengeResponse ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ChallengeResponseFailure :: ChallengeResponse
pattern ChallengeResponseFailure = ChallengeResponse' "Failure"

pattern ChallengeResponseSuccess :: ChallengeResponse
pattern ChallengeResponseSuccess = ChallengeResponse' "Success"

{-# COMPLETE
  ChallengeResponseFailure,
  ChallengeResponseSuccess,
  ChallengeResponse'
  #-}

instance Prelude.FromText ChallengeResponse where
  parser = ChallengeResponse' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChallengeResponse where
  toText (ChallengeResponse' x) = x

instance Prelude.Hashable ChallengeResponse

instance Prelude.NFData ChallengeResponse

instance Prelude.ToByteString ChallengeResponse

instance Prelude.ToQuery ChallengeResponse

instance Prelude.ToHeader ChallengeResponse

instance Prelude.FromJSON ChallengeResponse where
  parseJSON = Prelude.parseJSONText "ChallengeResponse"
