{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.KinesisStreamsOutputUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.KinesisStreamsOutputUpdate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | When updating an output configuration using the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html UpdateApplication> operation, provides information about an Amazon Kinesis stream configured as the destination.
--
--
--
-- /See:/ 'kinesisStreamsOutputUpdate' smart constructor.
data KinesisStreamsOutputUpdate = KinesisStreamsOutputUpdate'
  { _ksouResourceARNUpdate ::
      !(Maybe Text),
    _ksouRoleARNUpdate ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'KinesisStreamsOutputUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ksouResourceARNUpdate' - Amazon Resource Name (ARN) of the Amazon Kinesis stream where you want to write the output.
--
-- * 'ksouRoleARNUpdate' - ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.
kinesisStreamsOutputUpdate ::
  KinesisStreamsOutputUpdate
kinesisStreamsOutputUpdate =
  KinesisStreamsOutputUpdate'
    { _ksouResourceARNUpdate =
        Nothing,
      _ksouRoleARNUpdate = Nothing
    }

-- | Amazon Resource Name (ARN) of the Amazon Kinesis stream where you want to write the output.
ksouResourceARNUpdate :: Lens' KinesisStreamsOutputUpdate (Maybe Text)
ksouResourceARNUpdate = lens _ksouResourceARNUpdate (\s a -> s {_ksouResourceARNUpdate = a})

-- | ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.
ksouRoleARNUpdate :: Lens' KinesisStreamsOutputUpdate (Maybe Text)
ksouRoleARNUpdate = lens _ksouRoleARNUpdate (\s a -> s {_ksouRoleARNUpdate = a})

instance Hashable KinesisStreamsOutputUpdate

instance NFData KinesisStreamsOutputUpdate

instance ToJSON KinesisStreamsOutputUpdate where
  toJSON KinesisStreamsOutputUpdate' {..} =
    object
      ( catMaybes
          [ ("ResourceARNUpdate" .=) <$> _ksouResourceARNUpdate,
            ("RoleARNUpdate" .=) <$> _ksouRoleARNUpdate
          ]
      )
