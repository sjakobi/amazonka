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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.ChallengeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.ChallengeName
  ( ChallengeName
      ( ..,
        ChallengeNameMfa,
        ChallengeNamePassword
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChallengeName = ChallengeName'
  { fromChallengeName ::
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

pattern ChallengeNameMfa :: ChallengeName
pattern ChallengeNameMfa = ChallengeName' "Mfa"

pattern ChallengeNamePassword :: ChallengeName
pattern ChallengeNamePassword = ChallengeName' "Password"

{-# COMPLETE
  ChallengeNameMfa,
  ChallengeNamePassword,
  ChallengeName'
  #-}

instance Prelude.FromText ChallengeName where
  parser = ChallengeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChallengeName where
  toText (ChallengeName' x) = x

instance Prelude.Hashable ChallengeName

instance Prelude.NFData ChallengeName

instance Prelude.ToByteString ChallengeName

instance Prelude.ToQuery ChallengeName

instance Prelude.ToHeader ChallengeName

instance Prelude.FromJSON ChallengeName where
  parseJSON = Prelude.parseJSONText "ChallengeName"
