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
-- Module      : Network.AWS.SWF.Types.ChildPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ChildPolicy
  ( ChildPolicy
      ( ..,
        ChildPolicyABANDON,
        ChildPolicyREQUESTCANCEL,
        ChildPolicyTERMINATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChildPolicy = ChildPolicy'
  { fromChildPolicy ::
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

pattern ChildPolicyABANDON :: ChildPolicy
pattern ChildPolicyABANDON = ChildPolicy' "ABANDON"

pattern ChildPolicyREQUESTCANCEL :: ChildPolicy
pattern ChildPolicyREQUESTCANCEL = ChildPolicy' "REQUEST_CANCEL"

pattern ChildPolicyTERMINATE :: ChildPolicy
pattern ChildPolicyTERMINATE = ChildPolicy' "TERMINATE"

{-# COMPLETE
  ChildPolicyABANDON,
  ChildPolicyREQUESTCANCEL,
  ChildPolicyTERMINATE,
  ChildPolicy'
  #-}

instance Prelude.FromText ChildPolicy where
  parser = ChildPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChildPolicy where
  toText (ChildPolicy' x) = x

instance Prelude.Hashable ChildPolicy

instance Prelude.NFData ChildPolicy

instance Prelude.ToByteString ChildPolicy

instance Prelude.ToQuery ChildPolicy

instance Prelude.ToHeader ChildPolicy

instance Prelude.ToJSON ChildPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ChildPolicy where
  parseJSON = Prelude.parseJSONText "ChildPolicy"
