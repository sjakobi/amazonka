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
-- Module      : Network.AWS.Inspector.Types.PreviewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.PreviewStatus
  ( PreviewStatus
      ( ..,
        PreviewStatusCOMPLETED,
        PreviewStatusWORKINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PreviewStatus = PreviewStatus'
  { fromPreviewStatus ::
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

pattern PreviewStatusCOMPLETED :: PreviewStatus
pattern PreviewStatusCOMPLETED = PreviewStatus' "COMPLETED"

pattern PreviewStatusWORKINPROGRESS :: PreviewStatus
pattern PreviewStatusWORKINPROGRESS = PreviewStatus' "WORK_IN_PROGRESS"

{-# COMPLETE
  PreviewStatusCOMPLETED,
  PreviewStatusWORKINPROGRESS,
  PreviewStatus'
  #-}

instance Prelude.FromText PreviewStatus where
  parser = PreviewStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PreviewStatus where
  toText (PreviewStatus' x) = x

instance Prelude.Hashable PreviewStatus

instance Prelude.NFData PreviewStatus

instance Prelude.ToByteString PreviewStatus

instance Prelude.ToQuery PreviewStatus

instance Prelude.ToHeader PreviewStatus

instance Prelude.FromJSON PreviewStatus where
  parseJSON = Prelude.parseJSONText "PreviewStatus"
