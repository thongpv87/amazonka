{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateSnapshot
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use snapshots for backups, to make copies of EBS volumes, and to save data before shutting down an instance.
--
-- When a snapshot is created, any AWS Marketplace product codes that are associated with the source volume are propagated to the snapshot.
-- You can take a snapshot of an attached volume that is in use. However, snapshots only capture data that has been written to your EBS volume at the time the snapshot command is issued; this may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the volume long enough to take a snapshot, your snapshot should be complete. However, if you cannot pause all file writes to the volume, you should unmount the volume from within the instance, issue the snapshot command, and then remount the volume to ensure a consistent and complete snapshot. You may remount and use your volume while the snapshot status is @pending@ .
-- To create a snapshot for EBS volumes that serve as root devices, you should stop the instance before taking the snapshot.
-- Snapshots that are taken from encrypted volumes are automatically encrypted. Volumes that are created from encrypted snapshots are also automatically encrypted. Your encrypted volumes and any associated snapshots always remain protected.
-- You can tag your snapshots during creation. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html Tagging your Amazon EC2 resources> in the /Amazon Elastic Compute Cloud User Guide/ .
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html Amazon Elastic Block Store> and <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS Encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CreateSnapshot
    (
    -- * Creating a request
      CreateSnapshot (..)
    , mkCreateSnapshot
    -- ** Request lenses
    , cshVolumeId
    , cshDescription
    , cshDryRun
    , cshTagSpecifications

     -- * Destructuring the response
    , Types.Snapshot (..)
    , Types.mkSnapshot
    -- ** Response lenses
    , Types.sDataEncryptionKeyId
    , Types.sDescription
    , Types.sEncrypted
    , Types.sKmsKeyId
    , Types.sOwnerAlias
    , Types.sOwnerId
    , Types.sProgress
    , Types.sSnapshotId
    , Types.sStartTime
    , Types.sState
    , Types.sStateMessage
    , Types.sTags
    , Types.sVolumeId
    , Types.sVolumeSize
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateSnapshot' smart constructor.
data CreateSnapshot = CreateSnapshot'
  { volumeId :: Types.VolumeId
    -- ^ The ID of the EBS volume.
  , description :: Core.Maybe Core.Text
    -- ^ A description for the snapshot.
  , dryRun :: Core.Maybe Core.Bool
    -- ^ Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
  , tagSpecifications :: Core.Maybe [Types.TagSpecification]
    -- ^ The tags to apply to the snapshot during creation.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateSnapshot' value with any optional fields omitted.
mkCreateSnapshot
    :: Types.VolumeId -- ^ 'volumeId'
    -> CreateSnapshot
mkCreateSnapshot volumeId
  = CreateSnapshot'{volumeId, description = Core.Nothing,
                    dryRun = Core.Nothing, tagSpecifications = Core.Nothing}

-- | The ID of the EBS volume.
--
-- /Note:/ Consider using 'volumeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cshVolumeId :: Lens.Lens' CreateSnapshot Types.VolumeId
cshVolumeId = Lens.field @"volumeId"
{-# INLINEABLE cshVolumeId #-}
{-# DEPRECATED volumeId "Use generic-lens or generic-optics with 'volumeId' instead"  #-}

-- | A description for the snapshot.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cshDescription :: Lens.Lens' CreateSnapshot (Core.Maybe Core.Text)
cshDescription = Lens.field @"description"
{-# INLINEABLE cshDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cshDryRun :: Lens.Lens' CreateSnapshot (Core.Maybe Core.Bool)
cshDryRun = Lens.field @"dryRun"
{-# INLINEABLE cshDryRun #-}
{-# DEPRECATED dryRun "Use generic-lens or generic-optics with 'dryRun' instead"  #-}

-- | The tags to apply to the snapshot during creation.
--
-- /Note:/ Consider using 'tagSpecifications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cshTagSpecifications :: Lens.Lens' CreateSnapshot (Core.Maybe [Types.TagSpecification])
cshTagSpecifications = Lens.field @"tagSpecifications"
{-# INLINEABLE cshTagSpecifications #-}
{-# DEPRECATED tagSpecifications "Use generic-lens or generic-optics with 'tagSpecifications' instead"  #-}

instance Core.ToQuery CreateSnapshot where
        toQuery CreateSnapshot{..}
          = Core.toQueryPair "Action" ("CreateSnapshot" :: Core.Text) Core.<>
              Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.toQueryPair "VolumeId" volumeId
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "Description") description
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "DryRun") dryRun
              Core.<>
              Core.maybe Core.mempty (Core.toQueryList "TagSpecification")
                tagSpecifications

instance Core.ToHeaders CreateSnapshot where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest CreateSnapshot where
        type Rs CreateSnapshot = Types.Snapshot
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse = Response.receiveXML (\ s h x -> Core.parseXML x)
        
        {-# INLINE parseResponse #-}
