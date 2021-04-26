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
-- Module      : Network.AWS.SageMaker.Types.NotebookOutputOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookOutputOption
  ( NotebookOutputOption
      ( ..,
        NotebookOutputOptionAllowed,
        NotebookOutputOptionDisabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookOutputOption = NotebookOutputOption'
  { fromNotebookOutputOption ::
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

pattern NotebookOutputOptionAllowed :: NotebookOutputOption
pattern NotebookOutputOptionAllowed = NotebookOutputOption' "Allowed"

pattern NotebookOutputOptionDisabled :: NotebookOutputOption
pattern NotebookOutputOptionDisabled = NotebookOutputOption' "Disabled"

{-# COMPLETE
  NotebookOutputOptionAllowed,
  NotebookOutputOptionDisabled,
  NotebookOutputOption'
  #-}

instance Prelude.FromText NotebookOutputOption where
  parser = NotebookOutputOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotebookOutputOption where
  toText (NotebookOutputOption' x) = x

instance Prelude.Hashable NotebookOutputOption

instance Prelude.NFData NotebookOutputOption

instance Prelude.ToByteString NotebookOutputOption

instance Prelude.ToQuery NotebookOutputOption

instance Prelude.ToHeader NotebookOutputOption

instance Prelude.ToJSON NotebookOutputOption where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NotebookOutputOption where
  parseJSON = Prelude.parseJSONText "NotebookOutputOption"
