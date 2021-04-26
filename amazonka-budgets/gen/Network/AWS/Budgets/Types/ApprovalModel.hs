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
-- Module      : Network.AWS.Budgets.Types.ApprovalModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ApprovalModel
  ( ApprovalModel
      ( ..,
        ApprovalModelAUTOMATIC,
        ApprovalModelMANUAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApprovalModel = ApprovalModel'
  { fromApprovalModel ::
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

pattern ApprovalModelAUTOMATIC :: ApprovalModel
pattern ApprovalModelAUTOMATIC = ApprovalModel' "AUTOMATIC"

pattern ApprovalModelMANUAL :: ApprovalModel
pattern ApprovalModelMANUAL = ApprovalModel' "MANUAL"

{-# COMPLETE
  ApprovalModelAUTOMATIC,
  ApprovalModelMANUAL,
  ApprovalModel'
  #-}

instance Prelude.FromText ApprovalModel where
  parser = ApprovalModel' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApprovalModel where
  toText (ApprovalModel' x) = x

instance Prelude.Hashable ApprovalModel

instance Prelude.NFData ApprovalModel

instance Prelude.ToByteString ApprovalModel

instance Prelude.ToQuery ApprovalModel

instance Prelude.ToHeader ApprovalModel

instance Prelude.ToJSON ApprovalModel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ApprovalModel where
  parseJSON = Prelude.parseJSONText "ApprovalModel"
