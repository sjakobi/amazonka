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
-- Module      : Network.AWS.CodeCommit.Types.ApprovalState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ApprovalState
  ( ApprovalState
      ( ..,
        ApprovalStateAPPROVE,
        ApprovalStateREVOKE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApprovalState = ApprovalState'
  { fromApprovalState ::
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

pattern ApprovalStateAPPROVE :: ApprovalState
pattern ApprovalStateAPPROVE = ApprovalState' "APPROVE"

pattern ApprovalStateREVOKE :: ApprovalState
pattern ApprovalStateREVOKE = ApprovalState' "REVOKE"

{-# COMPLETE
  ApprovalStateAPPROVE,
  ApprovalStateREVOKE,
  ApprovalState'
  #-}

instance Prelude.FromText ApprovalState where
  parser = ApprovalState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApprovalState where
  toText (ApprovalState' x) = x

instance Prelude.Hashable ApprovalState

instance Prelude.NFData ApprovalState

instance Prelude.ToByteString ApprovalState

instance Prelude.ToQuery ApprovalState

instance Prelude.ToHeader ApprovalState

instance Prelude.ToJSON ApprovalState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ApprovalState where
  parseJSON = Prelude.parseJSONText "ApprovalState"
