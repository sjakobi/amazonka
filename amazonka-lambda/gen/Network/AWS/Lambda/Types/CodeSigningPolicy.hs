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
-- Module      : Network.AWS.Lambda.Types.CodeSigningPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.CodeSigningPolicy
  ( CodeSigningPolicy
      ( ..,
        CodeSigningPolicyEnforce,
        CodeSigningPolicyWarn
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CodeSigningPolicy = CodeSigningPolicy'
  { fromCodeSigningPolicy ::
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

pattern CodeSigningPolicyEnforce :: CodeSigningPolicy
pattern CodeSigningPolicyEnforce = CodeSigningPolicy' "Enforce"

pattern CodeSigningPolicyWarn :: CodeSigningPolicy
pattern CodeSigningPolicyWarn = CodeSigningPolicy' "Warn"

{-# COMPLETE
  CodeSigningPolicyEnforce,
  CodeSigningPolicyWarn,
  CodeSigningPolicy'
  #-}

instance Prelude.FromText CodeSigningPolicy where
  parser = CodeSigningPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText CodeSigningPolicy where
  toText (CodeSigningPolicy' x) = x

instance Prelude.Hashable CodeSigningPolicy

instance Prelude.NFData CodeSigningPolicy

instance Prelude.ToByteString CodeSigningPolicy

instance Prelude.ToQuery CodeSigningPolicy

instance Prelude.ToHeader CodeSigningPolicy

instance Prelude.ToJSON CodeSigningPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CodeSigningPolicy where
  parseJSON = Prelude.parseJSONText "CodeSigningPolicy"
