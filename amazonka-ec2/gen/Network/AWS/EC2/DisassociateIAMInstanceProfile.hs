{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DisassociateIAMInstanceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an IAM instance profile from a running or stopped instance.
--
--
-- Use 'DescribeIamInstanceProfileAssociations' to get the association ID.
module Network.AWS.EC2.DisassociateIAMInstanceProfile
  ( -- * Creating a Request
    disassociateIAMInstanceProfile,
    DisassociateIAMInstanceProfile,

    -- * Request Lenses
    diapAssociationId,

    -- * Destructuring the Response
    disassociateIAMInstanceProfileResponse,
    DisassociateIAMInstanceProfileResponse,

    -- * Response Lenses
    diaprrsIAMInstanceProfileAssociation,
    diaprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateIAMInstanceProfile' smart constructor.
newtype DisassociateIAMInstanceProfile = DisassociateIAMInstanceProfile'
  { _diapAssociationId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateIAMInstanceProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diapAssociationId' - The ID of the IAM instance profile association.
disassociateIAMInstanceProfile ::
  -- | 'diapAssociationId'
  Text ->
  DisassociateIAMInstanceProfile
disassociateIAMInstanceProfile pAssociationId_ =
  DisassociateIAMInstanceProfile'
    { _diapAssociationId =
        pAssociationId_
    }

-- | The ID of the IAM instance profile association.
diapAssociationId :: Lens' DisassociateIAMInstanceProfile Text
diapAssociationId = lens _diapAssociationId (\s a -> s {_diapAssociationId = a})

instance AWSRequest DisassociateIAMInstanceProfile where
  type
    Rs DisassociateIAMInstanceProfile =
      DisassociateIAMInstanceProfileResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DisassociateIAMInstanceProfileResponse'
            <$> (x .@? "iamInstanceProfileAssociation")
            <*> (pure (fromEnum s))
      )

instance Hashable DisassociateIAMInstanceProfile

instance NFData DisassociateIAMInstanceProfile

instance ToHeaders DisassociateIAMInstanceProfile where
  toHeaders = const mempty

instance ToPath DisassociateIAMInstanceProfile where
  toPath = const "/"

instance ToQuery DisassociateIAMInstanceProfile where
  toQuery DisassociateIAMInstanceProfile' {..} =
    mconcat
      [ "Action"
          =: ("DisassociateIamInstanceProfile" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "AssociationId" =: _diapAssociationId
      ]

-- | /See:/ 'disassociateIAMInstanceProfileResponse' smart constructor.
data DisassociateIAMInstanceProfileResponse = DisassociateIAMInstanceProfileResponse'
  { _diaprrsIAMInstanceProfileAssociation ::
      !( Maybe
           IAMInstanceProfileAssociation
       ),
    _diaprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateIAMInstanceProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diaprrsIAMInstanceProfileAssociation' - Information about the IAM instance profile association.
--
-- * 'diaprrsResponseStatus' - -- | The response status code.
disassociateIAMInstanceProfileResponse ::
  -- | 'diaprrsResponseStatus'
  Int ->
  DisassociateIAMInstanceProfileResponse
disassociateIAMInstanceProfileResponse
  pResponseStatus_ =
    DisassociateIAMInstanceProfileResponse'
      { _diaprrsIAMInstanceProfileAssociation =
          Nothing,
        _diaprrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the IAM instance profile association.
diaprrsIAMInstanceProfileAssociation :: Lens' DisassociateIAMInstanceProfileResponse (Maybe IAMInstanceProfileAssociation)
diaprrsIAMInstanceProfileAssociation = lens _diaprrsIAMInstanceProfileAssociation (\s a -> s {_diaprrsIAMInstanceProfileAssociation = a})

-- | -- | The response status code.
diaprrsResponseStatus :: Lens' DisassociateIAMInstanceProfileResponse Int
diaprrsResponseStatus = lens _diaprrsResponseStatus (\s a -> s {_diaprrsResponseStatus = a})

instance
  NFData
    DisassociateIAMInstanceProfileResponse
