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
-- Module      : Network.AWS.CloudFormation.Types.TemplateStage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.TemplateStage
  ( TemplateStage
      ( ..,
        TemplateStageOriginal,
        TemplateStageProcessed
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TemplateStage = TemplateStage'
  { fromTemplateStage ::
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

pattern TemplateStageOriginal :: TemplateStage
pattern TemplateStageOriginal = TemplateStage' "Original"

pattern TemplateStageProcessed :: TemplateStage
pattern TemplateStageProcessed = TemplateStage' "Processed"

{-# COMPLETE
  TemplateStageOriginal,
  TemplateStageProcessed,
  TemplateStage'
  #-}

instance Prelude.FromText TemplateStage where
  parser = TemplateStage' Prelude.<$> Prelude.takeText

instance Prelude.ToText TemplateStage where
  toText (TemplateStage' x) = x

instance Prelude.Hashable TemplateStage

instance Prelude.NFData TemplateStage

instance Prelude.ToByteString TemplateStage

instance Prelude.ToQuery TemplateStage

instance Prelude.ToHeader TemplateStage

instance Prelude.FromXML TemplateStage where
  parseXML = Prelude.parseXMLText "TemplateStage"
