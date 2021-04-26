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
-- Module      : Network.AWS.SageMaker.Types.HumanTaskUiStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HumanTaskUiStatus
  ( HumanTaskUiStatus
      ( ..,
        HumanTaskUiStatusActive,
        HumanTaskUiStatusDeleting
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HumanTaskUiStatus = HumanTaskUiStatus'
  { fromHumanTaskUiStatus ::
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

pattern HumanTaskUiStatusActive :: HumanTaskUiStatus
pattern HumanTaskUiStatusActive = HumanTaskUiStatus' "Active"

pattern HumanTaskUiStatusDeleting :: HumanTaskUiStatus
pattern HumanTaskUiStatusDeleting = HumanTaskUiStatus' "Deleting"

{-# COMPLETE
  HumanTaskUiStatusActive,
  HumanTaskUiStatusDeleting,
  HumanTaskUiStatus'
  #-}

instance Prelude.FromText HumanTaskUiStatus where
  parser = HumanTaskUiStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText HumanTaskUiStatus where
  toText (HumanTaskUiStatus' x) = x

instance Prelude.Hashable HumanTaskUiStatus

instance Prelude.NFData HumanTaskUiStatus

instance Prelude.ToByteString HumanTaskUiStatus

instance Prelude.ToQuery HumanTaskUiStatus

instance Prelude.ToHeader HumanTaskUiStatus

instance Prelude.FromJSON HumanTaskUiStatus where
  parseJSON = Prelude.parseJSONText "HumanTaskUiStatus"
