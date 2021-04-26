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
-- Module      : Network.AWS.SageMaker.Types.AuthMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AuthMode
  ( AuthMode
      ( ..,
        AuthModeIAM,
        AuthModeSSO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthMode = AuthMode'
  { fromAuthMode ::
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

pattern AuthModeIAM :: AuthMode
pattern AuthModeIAM = AuthMode' "IAM"

pattern AuthModeSSO :: AuthMode
pattern AuthModeSSO = AuthMode' "SSO"

{-# COMPLETE
  AuthModeIAM,
  AuthModeSSO,
  AuthMode'
  #-}

instance Prelude.FromText AuthMode where
  parser = AuthMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthMode where
  toText (AuthMode' x) = x

instance Prelude.Hashable AuthMode

instance Prelude.NFData AuthMode

instance Prelude.ToByteString AuthMode

instance Prelude.ToQuery AuthMode

instance Prelude.ToHeader AuthMode

instance Prelude.ToJSON AuthMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthMode where
  parseJSON = Prelude.parseJSONText "AuthMode"
