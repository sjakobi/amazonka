{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Bias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Bias where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MetricsSource

-- | Contains bias metrics for a model.
--
--
--
-- /See:/ 'bias' smart constructor.
newtype Bias = Bias' {_bReport :: Maybe MetricsSource}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Bias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bReport' - The bias report for a model
bias ::
  Bias
bias = Bias' {_bReport = Nothing}

-- | The bias report for a model
bReport :: Lens' Bias (Maybe MetricsSource)
bReport = lens _bReport (\s a -> s {_bReport = a})

instance FromJSON Bias where
  parseJSON =
    withObject
      "Bias"
      (\x -> Bias' <$> (x .:? "Report"))

instance Hashable Bias

instance NFData Bias

instance ToJSON Bias where
  toJSON Bias' {..} =
    object (catMaybes [("Report" .=) <$> _bReport])
