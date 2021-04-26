{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.Builder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.Builder where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The builder used to build the custom platform.
--
-- /See:/ 'newBuilder' smart constructor.
data Builder = Builder'
  { -- | The ARN of the builder.
    aRN :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Builder' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aRN', 'builder_aRN' - The ARN of the builder.
newBuilder ::
  Builder
newBuilder = Builder' {aRN = Prelude.Nothing}

-- | The ARN of the builder.
builder_aRN :: Lens.Lens' Builder (Prelude.Maybe Prelude.Text)
builder_aRN = Lens.lens (\Builder' {aRN} -> aRN) (\s@Builder' {} a -> s {aRN = a} :: Builder)

instance Prelude.FromXML Builder where
  parseXML x =
    Builder' Prelude.<$> (x Prelude..@? "ARN")

instance Prelude.Hashable Builder

instance Prelude.NFData Builder
