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
-- Module      : Network.AWS.MediaLive.Types.AuthenticationScheme
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AuthenticationScheme
  ( AuthenticationScheme
      ( ..,
        AuthenticationSchemeAKAMAI,
        AuthenticationSchemeCOMMON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Authentication Scheme
newtype AuthenticationScheme = AuthenticationScheme'
  { fromAuthenticationScheme ::
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

pattern AuthenticationSchemeAKAMAI :: AuthenticationScheme
pattern AuthenticationSchemeAKAMAI = AuthenticationScheme' "AKAMAI"

pattern AuthenticationSchemeCOMMON :: AuthenticationScheme
pattern AuthenticationSchemeCOMMON = AuthenticationScheme' "COMMON"

{-# COMPLETE
  AuthenticationSchemeAKAMAI,
  AuthenticationSchemeCOMMON,
  AuthenticationScheme'
  #-}

instance Prelude.FromText AuthenticationScheme where
  parser = AuthenticationScheme' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthenticationScheme where
  toText (AuthenticationScheme' x) = x

instance Prelude.Hashable AuthenticationScheme

instance Prelude.NFData AuthenticationScheme

instance Prelude.ToByteString AuthenticationScheme

instance Prelude.ToQuery AuthenticationScheme

instance Prelude.ToHeader AuthenticationScheme

instance Prelude.ToJSON AuthenticationScheme where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthenticationScheme where
  parseJSON = Prelude.parseJSONText "AuthenticationScheme"
