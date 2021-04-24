{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.TargetGroupTuple
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TargetGroupTuple where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about how traffic will be distributed between multiple target groups in a forward rule.
--
--
--
-- /See:/ 'targetGroupTuple' smart constructor.
data TargetGroupTuple = TargetGroupTuple'
  { _tgtTargetGroupARN ::
      !(Maybe Text),
    _tgtWeight :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TargetGroupTuple' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgtTargetGroupARN' - The Amazon Resource Name (ARN) of the target group.
--
-- * 'tgtWeight' - The weight. The range is 0 to 999.
targetGroupTuple ::
  TargetGroupTuple
targetGroupTuple =
  TargetGroupTuple'
    { _tgtTargetGroupARN = Nothing,
      _tgtWeight = Nothing
    }

-- | The Amazon Resource Name (ARN) of the target group.
tgtTargetGroupARN :: Lens' TargetGroupTuple (Maybe Text)
tgtTargetGroupARN = lens _tgtTargetGroupARN (\s a -> s {_tgtTargetGroupARN = a})

-- | The weight. The range is 0 to 999.
tgtWeight :: Lens' TargetGroupTuple (Maybe Int)
tgtWeight = lens _tgtWeight (\s a -> s {_tgtWeight = a})

instance FromXML TargetGroupTuple where
  parseXML x =
    TargetGroupTuple'
      <$> (x .@? "TargetGroupArn") <*> (x .@? "Weight")

instance Hashable TargetGroupTuple

instance NFData TargetGroupTuple

instance ToQuery TargetGroupTuple where
  toQuery TargetGroupTuple' {..} =
    mconcat
      [ "TargetGroupArn" =: _tgtTargetGroupARN,
        "Weight" =: _tgtWeight
      ]
