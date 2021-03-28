{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.DeleteEndpoint
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an endpoint. Amazon SageMaker frees up all of the resources that were deployed when the endpoint was created. 
--
-- Amazon SageMaker retires any custom KMS key grants associated with the endpoint, meaning you don't need to use the <http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html RevokeGrant> API call.
module Network.AWS.SageMaker.DeleteEndpoint
    (
    -- * Creating a request
      DeleteEndpoint (..)
    , mkDeleteEndpoint
    -- ** Request lenses
    , deEndpointName

    -- * Destructuring the response
    , DeleteEndpointResponse (..)
    , mkDeleteEndpointResponse
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkDeleteEndpoint' smart constructor.
newtype DeleteEndpoint = DeleteEndpoint'
  { endpointName :: Types.EndpointName
    -- ^ The name of the endpoint that you want to delete.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteEndpoint' value with any optional fields omitted.
mkDeleteEndpoint
    :: Types.EndpointName -- ^ 'endpointName'
    -> DeleteEndpoint
mkDeleteEndpoint endpointName = DeleteEndpoint'{endpointName}

-- | The name of the endpoint that you want to delete.
--
-- /Note:/ Consider using 'endpointName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deEndpointName :: Lens.Lens' DeleteEndpoint Types.EndpointName
deEndpointName = Lens.field @"endpointName"
{-# INLINEABLE deEndpointName #-}
{-# DEPRECATED endpointName "Use generic-lens or generic-optics with 'endpointName' instead"  #-}

instance Core.ToQuery DeleteEndpoint where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteEndpoint where
        toHeaders DeleteEndpoint{..}
          = Core.pure ("X-Amz-Target", "SageMaker.DeleteEndpoint") Core.<>
              Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeleteEndpoint where
        toJSON DeleteEndpoint{..}
          = Core.object
              (Core.catMaybes [Core.Just ("EndpointName" Core..= endpointName)])

instance Core.AWSRequest DeleteEndpoint where
        type Rs DeleteEndpoint = DeleteEndpointResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse = Response.receiveNull DeleteEndpointResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeleteEndpointResponse' smart constructor.
data DeleteEndpointResponse = DeleteEndpointResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteEndpointResponse' value with any optional fields omitted.
mkDeleteEndpointResponse
    :: DeleteEndpointResponse
mkDeleteEndpointResponse = DeleteEndpointResponse'
